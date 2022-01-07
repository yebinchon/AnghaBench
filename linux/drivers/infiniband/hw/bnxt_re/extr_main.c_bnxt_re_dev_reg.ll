; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_dev_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_dev_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.bnxt_en_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: Failed to probe\0A\00", align 1
@ROCE_DRV_MODULE_NAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_re_dev**, %struct.net_device*)* @bnxt_re_dev_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_re_dev_reg(%struct.bnxt_re_dev** %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_re_dev**, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bnxt_en_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.bnxt_re_dev** %0, %struct.bnxt_re_dev*** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call i32 @is_bnxt_re_dev(%struct.net_device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.bnxt_en_dev* @bnxt_re_dev_probe(%struct.net_device* %15)
  store %struct.bnxt_en_dev* %16, %struct.bnxt_en_dev** %6, align 8
  %17 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %6, align 8
  %18 = call i64 @IS_ERR(%struct.bnxt_en_dev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %6, align 8
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.bnxt_en_dev* @ERR_PTR(i32 %23)
  %25 = icmp ne %struct.bnxt_en_dev* %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @ROCE_DRV_MODULE_NAME, align 4
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %6, align 8
  %31 = call i32 @PTR_ERR(%struct.bnxt_en_dev* %30)
  store i32 %31, i32* %7, align 4
  br label %47

32:                                               ; preds = %14
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %6, align 8
  %35 = call %struct.bnxt_re_dev* @bnxt_re_dev_add(%struct.net_device* %33, %struct.bnxt_en_dev* %34)
  %36 = load %struct.bnxt_re_dev**, %struct.bnxt_re_dev*** %4, align 8
  store %struct.bnxt_re_dev* %35, %struct.bnxt_re_dev** %36, align 8
  %37 = load %struct.bnxt_re_dev**, %struct.bnxt_re_dev*** %4, align 8
  %38 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %37, align 8
  %39 = icmp ne %struct.bnxt_re_dev* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %6, align 8
  %45 = call i32 @bnxt_re_dev_unprobe(%struct.net_device* %43, %struct.bnxt_en_dev* %44)
  br label %47

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %40, %29
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %11
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @is_bnxt_re_dev(%struct.net_device*) #1

declare dso_local %struct.bnxt_en_dev* @bnxt_re_dev_probe(%struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.bnxt_en_dev*) #1

declare dso_local %struct.bnxt_en_dev* @ERR_PTR(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.bnxt_en_dev*) #1

declare dso_local %struct.bnxt_re_dev* @bnxt_re_dev_add(%struct.net_device*, %struct.bnxt_en_dev*) #1

declare dso_local i32 @bnxt_re_dev_unprobe(%struct.net_device*, %struct.bnxt_en_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
