; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cmd.c___hns_roce_cmd_mbox_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cmd.c___hns_roce_cmd_mbox_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.device*, %struct.hns_roce_cmdq }
%struct.device = type { i32 }
%struct.hns_roce_cmdq = type { i64, i32, %struct.hns_roce_cmd_context*, i64 }
%struct.hns_roce_cmd_context = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"[cmd]wait_for_completion_timeout timeout\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"[cmd]event mod cmd process error!err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32, i32, i64, i32, i32, i64)* @__hns_roce_cmd_mbox_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hns_roce_cmd_mbox_wait(%struct.hns_roce_dev* %0, i32 %1, i32 %2, i64 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.hns_roce_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.hns_roce_cmdq*, align 8
  %16 = alloca %struct.hns_roce_cmd_context*, align 8
  %17 = alloca %struct.device*, align 8
  %18 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %19 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %20 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %19, i32 0, i32 1
  store %struct.hns_roce_cmdq* %20, %struct.hns_roce_cmdq** %15, align 8
  %21 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %22 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %21, i32 0, i32 0
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %17, align 8
  %24 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %15, align 8
  %25 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %24, i32 0, i32 1
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %15, align 8
  %28 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %15, align 8
  %34 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %33, i32 0, i32 2
  %35 = load %struct.hns_roce_cmd_context*, %struct.hns_roce_cmd_context** %34, align 8
  %36 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %15, align 8
  %37 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.hns_roce_cmd_context, %struct.hns_roce_cmd_context* %35, i64 %38
  store %struct.hns_roce_cmd_context* %39, %struct.hns_roce_cmd_context** %16, align 8
  %40 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %15, align 8
  %41 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = load %struct.hns_roce_cmd_context*, %struct.hns_roce_cmd_context** %16, align 8
  %45 = getelementptr inbounds %struct.hns_roce_cmd_context, %struct.hns_roce_cmd_context* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 8
  %50 = load %struct.hns_roce_cmd_context*, %struct.hns_roce_cmd_context** %16, align 8
  %51 = getelementptr inbounds %struct.hns_roce_cmd_context, %struct.hns_roce_cmd_context* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %15, align 8
  %54 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %15, align 8
  %56 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.hns_roce_cmd_context*, %struct.hns_roce_cmd_context** %16, align 8
  %59 = getelementptr inbounds %struct.hns_roce_cmd_context, %struct.hns_roce_cmd_context* %58, i32 0, i32 2
  %60 = call i32 @init_completion(i32* %59)
  %61 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i64, i64* %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.hns_roce_cmd_context*, %struct.hns_roce_cmd_context** %16, align 8
  %68 = getelementptr inbounds %struct.hns_roce_cmd_context, %struct.hns_roce_cmd_context* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @hns_roce_cmd_mbox_post_hw(%struct.hns_roce_dev* %61, i32 %62, i32 %63, i64 %64, i32 %65, i32 %66, i32 %69, i32 1)
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %7
  br label %97

74:                                               ; preds = %7
  %75 = load %struct.hns_roce_cmd_context*, %struct.hns_roce_cmd_context** %16, align 8
  %76 = getelementptr inbounds %struct.hns_roce_cmd_context, %struct.hns_roce_cmd_context* %75, i32 0, i32 2
  %77 = load i64, i64* %14, align 8
  %78 = call i32 @msecs_to_jiffies(i64 %77)
  %79 = call i32 @wait_for_completion_timeout(i32* %76, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %74
  %82 = load %struct.device*, %struct.device** %17, align 8
  %83 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %18, align 4
  br label %97

86:                                               ; preds = %74
  %87 = load %struct.hns_roce_cmd_context*, %struct.hns_roce_cmd_context** %16, align 8
  %88 = getelementptr inbounds %struct.hns_roce_cmd_context, %struct.hns_roce_cmd_context* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.device*, %struct.device** %17, align 8
  %94 = load i32, i32* %18, align 4
  %95 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %93, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %97

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %92, %81, %73
  %98 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %15, align 8
  %99 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %98, i32 0, i32 1
  %100 = call i32 @spin_lock(i32* %99)
  %101 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %15, align 8
  %102 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.hns_roce_cmd_context*, %struct.hns_roce_cmd_context** %16, align 8
  %105 = getelementptr inbounds %struct.hns_roce_cmd_context, %struct.hns_roce_cmd_context* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.hns_roce_cmd_context*, %struct.hns_roce_cmd_context** %16, align 8
  %107 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %15, align 8
  %108 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %107, i32 0, i32 2
  %109 = load %struct.hns_roce_cmd_context*, %struct.hns_roce_cmd_context** %108, align 8
  %110 = ptrtoint %struct.hns_roce_cmd_context* %106 to i64
  %111 = ptrtoint %struct.hns_roce_cmd_context* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 24
  %114 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %15, align 8
  %115 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %15, align 8
  %117 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %116, i32 0, i32 1
  %118 = call i32 @spin_unlock(i32* %117)
  %119 = load i32, i32* %18, align 4
  ret i32 %119
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @hns_roce_cmd_mbox_post_hw(%struct.hns_roce_dev*, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
