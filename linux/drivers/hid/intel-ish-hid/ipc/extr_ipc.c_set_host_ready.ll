; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_set_host_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_set_host_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@CHV_DEVICE_ID = common dso_local global i64 0, align 8
@REVISION_ID_CHT_A0 = common dso_local global i32 0, align 4
@REVISION_ID_SI_MASK = common dso_local global i32 0, align 4
@REVISION_ID_CHT_Ax_SI = common dso_local global i32 0, align 4
@IPC_REG_HOST_COMM = common dso_local global i32 0, align 4
@REVISION_ID_CHT_B0 = common dso_local global i32 0, align 4
@REVISION_ID_CHT_Bx_SI = common dso_local global i32 0, align 4
@REVISION_ID_CHT_Kx_SI = common dso_local global i32 0, align 4
@REVISION_ID_CHT_Dx_SI = common dso_local global i32 0, align 4
@IPC_HOSTCOMM_INT_EN_BIT_CHV_AB = common dso_local global i32 0, align 4
@IPC_REG_PIMR_BXT = common dso_local global i32 0, align 4
@IPC_PIMR_INT_EN_BIT_BXT = common dso_local global i32 0, align 4
@IPC_HOST2ISH_BUSYCLEAR_MASK_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ishtp_device*)* @set_host_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_host_ready(%struct.ishtp_device* %0) #0 {
  %2 = alloca %struct.ishtp_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ishtp_device* %0, %struct.ishtp_device** %2, align 8
  %5 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %6 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CHV_DEVICE_ID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %86

12:                                               ; preds = %1
  %13 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %14 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @REVISION_ID_CHT_A0, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %12
  %21 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %22 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @REVISION_ID_SI_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @REVISION_ID_CHT_Ax_SI, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %20, %12
  %31 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %32 = load i32, i32* @IPC_REG_HOST_COMM, align 4
  %33 = call i32 @ish_reg_write(%struct.ishtp_device* %31, i32 %32, i32 129)
  br label %85

34:                                               ; preds = %20
  %35 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %36 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @REVISION_ID_CHT_B0, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %72, label %42

42:                                               ; preds = %34
  %43 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %44 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @REVISION_ID_SI_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @REVISION_ID_CHT_Bx_SI, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %72, label %52

52:                                               ; preds = %42
  %53 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %54 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @REVISION_ID_SI_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @REVISION_ID_CHT_Kx_SI, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %72, label %62

62:                                               ; preds = %52
  %63 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %64 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @REVISION_ID_SI_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @REVISION_ID_CHT_Dx_SI, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %62, %52, %42, %34
  %73 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %74 = load i32, i32* @IPC_REG_HOST_COMM, align 4
  %75 = call i32 @ish_reg_read(%struct.ishtp_device* %73, i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* @IPC_HOSTCOMM_INT_EN_BIT_CHV_AB, align 4
  %77 = or i32 %76, 129
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  %80 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %81 = load i32, i32* @IPC_REG_HOST_COMM, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @ish_reg_write(%struct.ishtp_device* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %72, %62
  br label %85

85:                                               ; preds = %84, %30
  br label %101

86:                                               ; preds = %1
  %87 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %88 = load i32, i32* @IPC_REG_PIMR_BXT, align 4
  %89 = call i32 @ish_reg_read(%struct.ishtp_device* %87, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* @IPC_PIMR_INT_EN_BIT_BXT, align 4
  %91 = load i32, i32* %4, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* @IPC_HOST2ISH_BUSYCLEAR_MASK_BIT, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %4, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %4, align 4
  %97 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %98 = load i32, i32* @IPC_REG_PIMR_BXT, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @ish_reg_write(%struct.ishtp_device* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %86, %85
  ret void
}

declare dso_local i32 @ish_reg_write(%struct.ishtp_device*, i32, i32) #1

declare dso_local i32 @ish_reg_read(%struct.ishtp_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
