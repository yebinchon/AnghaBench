; ModuleID = '/home/carl/AnghaBench/linux/drivers/dca/extr_dca-sysfs.c_dca_sysfs_add_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dca/extr_dca-sysfs.c_dca_sysfs_add_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dca_provider = type { i32 }
%struct.device = type { i32 }

@dca_sysfs_add_req.req_count = internal global i32 0, align 4
@dca_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"requester%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dca_sysfs_add_req(%struct.dca_provider* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dca_provider*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store %struct.dca_provider* %0, %struct.dca_provider** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @dca_class, align 4
  %10 = load %struct.dca_provider*, %struct.dca_provider** %5, align 8
  %11 = getelementptr inbounds %struct.dca_provider, %struct.dca_provider* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i32 @MKDEV(i32 0, i32 %14)
  %16 = load i32, i32* @dca_sysfs_add_req.req_count, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @dca_sysfs_add_req.req_count, align 4
  %18 = call %struct.device* @device_create(i32 %9, i32 %12, i32 %15, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %16)
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.device*, %struct.device** %8, align 8
  %20 = call i64 @IS_ERR(%struct.device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.device*, %struct.device** %8, align 8
  %24 = call i32 @PTR_ERR(%struct.device* %23)
  store i32 %24, i32* %4, align 4
  br label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.device* @device_create(i32, i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
