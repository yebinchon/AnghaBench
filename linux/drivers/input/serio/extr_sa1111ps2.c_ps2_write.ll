; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_sa1111ps2.c_ps2_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_sa1111ps2.c_ps2_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.ps2if* }
%struct.ps2if = type { i32, i32, i8*, i32, i32, i64 }

@PS2STAT = common dso_local global i64 0, align 8
@PS2STAT_TXE = common dso_local global i32 0, align 4
@PS2DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8)* @ps2_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2_write(%struct.serio* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.serio*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.ps2if*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.serio*, %struct.serio** %3, align 8
  %9 = getelementptr inbounds %struct.serio, %struct.serio* %8, i32 0, i32 0
  %10 = load %struct.ps2if*, %struct.ps2if** %9, align 8
  store %struct.ps2if* %10, %struct.ps2if** %5, align 8
  %11 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %12 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %11, i32 0, i32 3
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %16 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PS2STAT, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl_relaxed(i64 %19)
  %21 = load i32, i32* @PS2STAT_TXE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i8, i8* %4, align 1
  %26 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %27 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PS2DATA, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel_relaxed(i8 zeroext %25, i64 %30)
  br label %72

32:                                               ; preds = %2
  %33 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %34 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %37 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %42 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @enable_irq(i32 %43)
  br label %45

45:                                               ; preds = %40, %32
  %46 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %47 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = and i64 %50, 7
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %55 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %45
  %59 = load i8, i8* %4, align 1
  %60 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %61 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %64 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %62, i64 %66
  store i8 %59, i8* %67, align 1
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %70 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %58, %45
  br label %72

72:                                               ; preds = %71, %24
  %73 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %74 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %73, i32 0, i32 3
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i8 zeroext, i64) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
