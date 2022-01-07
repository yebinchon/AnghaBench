; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_i2caux_action_from_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_i2caux_action_from_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aux_payload = type { i64, i64, i64 }

@I2CAUX_TRANSACTION_ACTION_I2C_WRITE_MOT = common dso_local global i32 0, align 4
@I2CAUX_TRANSACTION_ACTION_I2C_WRITE = common dso_local global i32 0, align 4
@I2CAUX_TRANSACTION_ACTION_I2C_READ_MOT = common dso_local global i32 0, align 4
@I2CAUX_TRANSACTION_ACTION_I2C_READ = common dso_local global i32 0, align 4
@I2CAUX_TRANSACTION_ACTION_DP_WRITE = common dso_local global i32 0, align 4
@I2CAUX_TRANSACTION_ACTION_DP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aux_payload*)* @i2caux_action_from_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2caux_action_from_payload(%struct.aux_payload* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aux_payload*, align 8
  store %struct.aux_payload* %0, %struct.aux_payload** %3, align 8
  %4 = load %struct.aux_payload*, %struct.aux_payload** %3, align 8
  %5 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load %struct.aux_payload*, %struct.aux_payload** %3, align 8
  %10 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.aux_payload*, %struct.aux_payload** %3, align 8
  %15 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @I2CAUX_TRANSACTION_ACTION_I2C_WRITE_MOT, align 4
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %13
  %21 = load i32, i32* @I2CAUX_TRANSACTION_ACTION_I2C_WRITE, align 4
  store i32 %21, i32* %2, align 4
  br label %40

22:                                               ; preds = %8
  %23 = load %struct.aux_payload*, %struct.aux_payload** %3, align 8
  %24 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @I2CAUX_TRANSACTION_ACTION_I2C_READ_MOT, align 4
  store i32 %28, i32* %2, align 4
  br label %40

29:                                               ; preds = %22
  %30 = load i32, i32* @I2CAUX_TRANSACTION_ACTION_I2C_READ, align 4
  store i32 %30, i32* %2, align 4
  br label %40

31:                                               ; preds = %1
  %32 = load %struct.aux_payload*, %struct.aux_payload** %3, align 8
  %33 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @I2CAUX_TRANSACTION_ACTION_DP_WRITE, align 4
  store i32 %37, i32* %2, align 4
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @I2CAUX_TRANSACTION_ACTION_DP_READ, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %36, %29, %27, %20, %18
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
