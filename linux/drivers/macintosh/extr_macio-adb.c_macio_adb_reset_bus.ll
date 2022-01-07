; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_macio-adb.c_macio_adb_reset_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_macio-adb.c_macio_adb_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@macio_lock = common dso_local global i32 0, align 4
@adb = common dso_local global %struct.TYPE_4__* null, align 8
@ADB_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @macio_adb_reset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macio_adb_reset_bus() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 1000000, i32* %3, align 4
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @macio_lock, i64 %4)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @adb, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @adb, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @in_8(i32* %11)
  %13 = load i32, i32* @ADB_RST, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @out_8(i32* %8, i32 %14)
  br label %16

16:                                               ; preds = %42, %0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @adb, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @in_8(i32* %19)
  %21 = load i32, i32* @ADB_RST, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %3, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @adb, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @adb, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @in_8(i32* %34)
  %36 = load i32, i32* @ADB_RST, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = call i32 @out_8(i32* %31, i32 %38)
  %40 = load i64, i64* %2, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* @macio_lock, i64 %40)
  store i32 -1, i32* %1, align 4
  br label %46

42:                                               ; preds = %24
  br label %16

43:                                               ; preds = %16
  %44 = load i64, i64* %2, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* @macio_lock, i64 %44)
  store i32 0, i32* %1, align 4
  br label %46

46:                                               ; preds = %43, %28
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @in_8(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
