; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_ad5272.c_ad5272_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_ad5272.c_ad5272_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5272_data = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5272_data*, i32, i32)* @ad5272_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5272_write(%struct.ad5272_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ad5272_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ad5272_data* %0, %struct.ad5272_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = shl i32 %8, 2
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 3
  %13 = or i32 %9, %12
  %14 = load %struct.ad5272_data*, %struct.ad5272_data** %4, align 8
  %15 = getelementptr inbounds %struct.ad5272_data, %struct.ad5272_data* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ad5272_data*, %struct.ad5272_data** %4, align 8
  %20 = getelementptr inbounds %struct.ad5272_data, %struct.ad5272_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %18, i32* %22, align 4
  %23 = load %struct.ad5272_data*, %struct.ad5272_data** %4, align 8
  %24 = getelementptr inbounds %struct.ad5272_data, %struct.ad5272_data* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.ad5272_data*, %struct.ad5272_data** %4, align 8
  %27 = getelementptr inbounds %struct.ad5272_data, %struct.ad5272_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ad5272_data*, %struct.ad5272_data** %4, align 8
  %30 = getelementptr inbounds %struct.ad5272_data, %struct.ad5272_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @i2c_master_send(i32 %28, i32* %31, i32 8)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.ad5272_data*, %struct.ad5272_data** %4, align 8
  %34 = getelementptr inbounds %struct.ad5272_data, %struct.ad5272_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* %7, align 4
  br label %41

40:                                               ; preds = %3
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  ret i32 %42
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
