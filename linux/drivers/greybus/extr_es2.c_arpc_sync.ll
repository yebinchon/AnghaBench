; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_arpc_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_arpc_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es2_ap_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.arpc = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to execute ARPC: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es2_ap_dev*, i32, i8*, i64, i32*, i32)* @arpc_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arpc_sync(%struct.es2_ap_dev* %0, i32 %1, i8* %2, i64 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.es2_ap_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.arpc*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.es2_ap_dev* %0, %struct.es2_ap_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32*, i32** %12, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32*, i32** %12, align 8
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %19, %6
  %22 = load i8*, i8** %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.arpc* @arpc_alloc(i8* %22, i64 %23, i32 %24)
  store %struct.arpc* %25, %struct.arpc** %14, align 8
  %26 = load %struct.arpc*, %struct.arpc** %14, align 8
  %27 = icmp ne %struct.arpc* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %117

31:                                               ; preds = %21
  %32 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %8, align 8
  %33 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %32, i32 0, i32 1
  %34 = load i64, i64* %15, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %8, align 8
  %37 = load %struct.arpc*, %struct.arpc** %14, align 8
  %38 = call i32 @arpc_add(%struct.es2_ap_dev* %36, %struct.arpc* %37)
  %39 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %8, align 8
  %40 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %39, i32 0, i32 1
  %41 = load i64, i64* %15, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %8, align 8
  %44 = load %struct.arpc*, %struct.arpc** %14, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @arpc_send(%struct.es2_ap_dev* %43, %struct.arpc* %44, i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  br label %87

50:                                               ; preds = %31
  %51 = load %struct.arpc*, %struct.arpc** %14, align 8
  %52 = getelementptr inbounds %struct.arpc, %struct.arpc* %51, i32 0, i32 1
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @msecs_to_jiffies(i32 %53)
  %55 = call i32 @wait_for_completion_interruptible_timeout(i32* %52, i32 %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %16, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %87

65:                                               ; preds = %50
  %66 = load %struct.arpc*, %struct.arpc** %14, align 8
  %67 = getelementptr inbounds %struct.arpc, %struct.arpc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %65
  %73 = load i32, i32* @EREMOTEIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %16, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.arpc*, %struct.arpc** %14, align 8
  %79 = getelementptr inbounds %struct.arpc, %struct.arpc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %12, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %77, %72
  br label %86

85:                                               ; preds = %65
  store i32 0, i32* %16, align 4
  br label %86

86:                                               ; preds = %85, %84
  br label %87

87:                                               ; preds = %86, %64, %49
  %88 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %8, align 8
  %89 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %88, i32 0, i32 1
  %90 = load i64, i64* %15, align 8
  %91 = call i32 @spin_lock_irqsave(i32* %89, i64 %90)
  %92 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %8, align 8
  %93 = load %struct.arpc*, %struct.arpc** %14, align 8
  %94 = call i32 @arpc_del(%struct.es2_ap_dev* %92, %struct.arpc* %93)
  %95 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %8, align 8
  %96 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %95, i32 0, i32 1
  %97 = load i64, i64* %15, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  %99 = load %struct.arpc*, %struct.arpc** %14, align 8
  %100 = call i32 @arpc_free(%struct.arpc* %99)
  %101 = load i32, i32* %16, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %87
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* @EREMOTEIO, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %8, align 8
  %110 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @dev_err(i32* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %108, %103, %87
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %115, %28
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local %struct.arpc* @arpc_alloc(i8*, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @arpc_add(%struct.es2_ap_dev*, %struct.arpc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @arpc_send(%struct.es2_ap_dev*, %struct.arpc*, i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @arpc_del(%struct.es2_ap_dev*, %struct.arpc*) #1

declare dso_local i32 @arpc_free(%struct.arpc*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
