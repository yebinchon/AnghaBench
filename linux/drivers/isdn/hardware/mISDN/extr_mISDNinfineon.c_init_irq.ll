; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_hw = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: couldn't get interrupt %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: ISAC init failed with %d\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@DEBUG_HW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: IRQ %d count %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"%s: IRQ(%d) got no requests during init %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inf_hw*)* @init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_irq(%struct.inf_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inf_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inf_hw* %0, %struct.inf_hw** %3, align 8
  store i32 3, i32* %5, align 4
  %7 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %8 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %7, i32 0, i32 5
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %119

16:                                               ; preds = %1
  %17 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %18 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %21 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %20, i32 0, i32 5
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IRQF_SHARED, align 4
  %26 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %27 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %30 = call i32 @request_irq(i32 %19, i32 %24, i32 %25, i32 %28, %struct.inf_hw* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %16
  %34 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %35 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %38 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %119

42:                                               ; preds = %16
  br label %43

43:                                               ; preds = %110, %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %5, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %111

47:                                               ; preds = %43
  %48 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %49 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %48, i32 0, i32 3
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @spin_lock_irqsave(i32* %49, i32 %50)
  %52 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %53 = call i32 @reset_inf(%struct.inf_hw* %52)
  %54 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %55 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %56, align 8
  %58 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %59 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %58, i32 0, i32 4
  %60 = call i32 %57(%struct.TYPE_4__* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %47
  %64 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %65 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %64, i32 0, i32 3
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i32 %66)
  %68 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %69 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71)
  br label %111

73:                                               ; preds = %47
  %74 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %75 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %74, i32 0, i32 3
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i32 %76)
  %78 = call i32 @msleep_interruptible(i32 10)
  %79 = load i32, i32* @debug, align 4
  %80 = load i32, i32* @DEBUG_HW, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %73
  %84 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %85 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %88 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %91 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @pr_notice(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %83, %73
  %95 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %96 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %94
  %100 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %101 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %104 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sub nsw i32 3, %106
  %108 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %105, i32 %107)
  br label %110

109:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %119

110:                                              ; preds = %99
  br label %43

111:                                              ; preds = %63, %43
  %112 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %113 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %116 = call i32 @free_irq(i32 %114, %struct.inf_hw* %115)
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %111, %109, %33, %13
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.inf_hw*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @reset_inf(%struct.inf_hw*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.inf_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
