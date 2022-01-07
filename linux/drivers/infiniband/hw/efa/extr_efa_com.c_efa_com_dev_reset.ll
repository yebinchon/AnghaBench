; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_dev_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_dev_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_dev = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@EFA_REGS_DEV_STS_OFF = common dso_local global i32 0, align 4
@EFA_REGS_CAPS_OFF = common dso_local global i32 0, align 4
@EFA_REGS_DEV_STS_READY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Device isn't ready, can't reset device\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EFA_REGS_CAPS_RESET_TIMEOUT_MASK = common dso_local global i32 0, align 4
@EFA_REGS_CAPS_RESET_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid timeout value\0A\00", align 1
@EFA_REGS_DEV_CTL_DEV_RESET_MASK = common dso_local global i32 0, align 4
@EFA_REGS_DEV_CTL_RESET_REASON_SHIFT = common dso_local global i32 0, align 4
@EFA_REGS_DEV_CTL_RESET_REASON_MASK = common dso_local global i32 0, align 4
@EFA_REGS_DEV_CTL_OFF = common dso_local global i64 0, align 8
@EFA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Reset indication didn't turn on\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Reset indication didn't turn off\0A\00", align 1
@EFA_REGS_CAPS_ADMIN_CMD_TO_MASK = common dso_local global i32 0, align 4
@EFA_REGS_CAPS_ADMIN_CMD_TO_SHIFT = common dso_local global i32 0, align 4
@ADMIN_CMD_TIMEOUT_US = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_com_dev_reset(%struct.efa_com_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efa_com_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.efa_com_dev* %0, %struct.efa_com_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %12 = load i32, i32* @EFA_REGS_DEV_STS_OFF, align 4
  %13 = call i32 @efa_com_reg_read32(%struct.efa_com_dev* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %15 = load i32, i32* @EFA_REGS_CAPS_OFF, align 4
  %16 = call i32 @efa_com_reg_read32(%struct.efa_com_dev* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @EFA_REGS_DEV_STS_READY_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %23 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ibdev_err(i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %111

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @EFA_REGS_CAPS_RESET_TIMEOUT_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @EFA_REGS_CAPS_RESET_TIMEOUT_SHIFT, align 4
  %33 = ashr i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %28
  %37 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %38 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ibdev_err(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %111

43:                                               ; preds = %28
  %44 = load i32, i32* @EFA_REGS_DEV_CTL_DEV_RESET_MASK, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @EFA_REGS_DEV_CTL_RESET_REASON_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* @EFA_REGS_DEV_CTL_RESET_REASON_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %54 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @EFA_REGS_DEV_CTL_OFF, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %60 = call i32 @efa_com_mmio_reg_read_resp_addr_init(%struct.efa_com_dev* %59)
  %61 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @EFA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK, align 4
  %64 = call i32 @wait_for_reset_state(%struct.efa_com_dev* %61, i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %43
  %68 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %69 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ibdev_err(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %111

73:                                               ; preds = %43
  %74 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %75 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @EFA_REGS_DEV_CTL_OFF, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 0, i64 %78)
  %80 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @wait_for_reset_state(%struct.efa_com_dev* %80, i32 %81, i32 0)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %73
  %86 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %87 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ibdev_err(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %3, align 4
  br label %111

91:                                               ; preds = %73
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @EFA_REGS_CAPS_ADMIN_CMD_TO_MASK, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* @EFA_REGS_CAPS_ADMIN_CMD_TO_SHIFT, align 4
  %96 = ashr i32 %94, %95
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %91
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 %100, 100000
  %102 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %103 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  br label %110

105:                                              ; preds = %91
  %106 = load i32, i32* @ADMIN_CMD_TIMEOUT_US, align 4
  %107 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %108 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  br label %110

110:                                              ; preds = %105, %99
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %85, %67, %36, %21
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @efa_com_reg_read32(%struct.efa_com_dev*, i32) #1

declare dso_local i32 @ibdev_err(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @efa_com_mmio_reg_read_resp_addr_init(%struct.efa_com_dev*) #1

declare dso_local i32 @wait_for_reset_state(%struct.efa_com_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
