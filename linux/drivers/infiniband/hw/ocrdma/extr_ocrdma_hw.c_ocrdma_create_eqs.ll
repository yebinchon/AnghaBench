; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_create_eqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_create_eqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@BE_INTERRUPT_MODE_INTX = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i64 0, align 8
@u32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_EQ_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ocrdma%d-%d\00", align 1
@ocrdma_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*)* @ocrdma_create_eqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_create_eqs(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %10 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %15 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %13, %18
  store i32 %19, i32* %4, align 4
  %20 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %21 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BE_INTERRUPT_MODE_INTX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  %27 = load i64, i64* @IRQF_SHARED, align 8
  store i64 %27, i64* %8, align 8
  br label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @u32, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (...) @num_online_cpus()
  %32 = call i32 @min_t(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %26
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %128

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.TYPE_9__* @kcalloc(i32 %40, i32 4, i32 %41)
  %43 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %44 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %43, i32 0, i32 2
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %44, align 8
  %45 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %46 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %45, i32 0, i32 2
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %128

52:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %120, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %123

57:                                               ; preds = %53
  %58 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %59 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %60 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %59, i32 0, i32 2
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 %63
  %65 = load i32, i32* @OCRDMA_EQ_LEN, align 4
  %66 = call i32 @ocrdma_create_eq(%struct.ocrdma_dev* %58, %struct.TYPE_9__* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %123

72:                                               ; preds = %57
  %73 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %74 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %73, i32 0, i32 2
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %82 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @sprintf(i32 %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %87 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %88 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %87, i32 0, i32 2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 %91
  %93 = call i32 @ocrdma_get_irq(%struct.ocrdma_dev* %86, %struct.TYPE_9__* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @ocrdma_irq_handler, align 4
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %98 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %97, i32 0, i32 2
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %106 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %105, i32 0, i32 2
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %109
  %111 = call i32 @request_irq(i32 %94, i32 %95, i64 %96, i32 %104, %struct.TYPE_9__* %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %72
  br label %124

115:                                              ; preds = %72
  %116 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %117 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %53

123:                                              ; preds = %69, %53
  store i32 0, i32* %2, align 4
  br label %128

124:                                              ; preds = %114
  %125 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %126 = call i32 @ocrdma_destroy_eqs(%struct.ocrdma_dev* %125)
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %124, %123, %49, %36
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local %struct.TYPE_9__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ocrdma_create_eq(%struct.ocrdma_dev*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @ocrdma_get_irq(%struct.ocrdma_dev*, %struct.TYPE_9__*) #1

declare dso_local i32 @request_irq(i32, i32, i64, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ocrdma_destroy_eqs(%struct.ocrdma_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
