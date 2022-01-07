; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_cfg.c_adf_cfg_key_val_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_cfg.c_adf_cfg_key_val_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { i32 }
%struct.adf_cfg_section = type { i32 }
%struct.adf_cfg_key_val = type { i32 }

@ADF_CFG_MAX_VAL_LEN_IN_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adf_accel_dev*, i8*, i8*, i8*)* @adf_cfg_key_val_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf_cfg_key_val_get(%struct.adf_accel_dev* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adf_accel_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.adf_cfg_section*, align 8
  %11 = alloca %struct.adf_cfg_key_val*, align 8
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call %struct.adf_cfg_section* @adf_cfg_sec_find(%struct.adf_accel_dev* %12, i8* %13)
  store %struct.adf_cfg_section* %14, %struct.adf_cfg_section** %10, align 8
  store %struct.adf_cfg_key_val* null, %struct.adf_cfg_key_val** %11, align 8
  %15 = load %struct.adf_cfg_section*, %struct.adf_cfg_section** %10, align 8
  %16 = icmp ne %struct.adf_cfg_section* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.adf_cfg_section*, %struct.adf_cfg_section** %10, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call %struct.adf_cfg_key_val* @adf_cfg_key_value_find(%struct.adf_cfg_section* %18, i8* %19)
  store %struct.adf_cfg_key_val* %20, %struct.adf_cfg_key_val** %11, align 8
  br label %21

21:                                               ; preds = %17, %4
  %22 = load %struct.adf_cfg_key_val*, %struct.adf_cfg_key_val** %11, align 8
  %23 = icmp ne %struct.adf_cfg_key_val* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.adf_cfg_key_val*, %struct.adf_cfg_key_val** %11, align 8
  %27 = getelementptr inbounds %struct.adf_cfg_key_val, %struct.adf_cfg_key_val* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ADF_CFG_MAX_VAL_LEN_IN_BYTES, align 4
  %30 = call i32 @memcpy(i8* %25, i32 %28, i32 %29)
  store i32 0, i32* %5, align 4
  br label %32

31:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local %struct.adf_cfg_section* @adf_cfg_sec_find(%struct.adf_accel_dev*, i8*) #1

declare dso_local %struct.adf_cfg_key_val* @adf_cfg_key_value_find(%struct.adf_cfg_section*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
