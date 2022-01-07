; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_reg_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_reg_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_com_dev = type { i32, i64, %struct.efa_com_mmio_read }
%struct.efa_com_mmio_read = type { i32, i32, i32, %struct.efa_admin_mmio_req_read_less_resp* }
%struct.efa_admin_mmio_req_read_less_resp = type { i32, i32, i32 }

@EFA_REGS_MMIO_REG_READ_REG_OFF_SHIFT = common dso_local global i32 0, align 4
@EFA_REGS_MMIO_REG_READ_REG_OFF_MASK = common dso_local global i32 0, align 4
@EFA_REGS_MMIO_REG_READ_REQ_ID_MASK = common dso_local global i32 0, align 4
@EFA_REGS_MMIO_REG_READ_OFF = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [93 x i8] c"Reading register timed out. expected: req id[%u] offset[%#x] actual: req id[%u] offset[%#x]\0A\00", align 1
@EFA_MMIO_READ_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Reading register failed: wrong offset provided\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_com_dev*, i32)* @efa_com_reg_read32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efa_com_reg_read32(%struct.efa_com_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.efa_com_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.efa_com_mmio_read*, align 8
  %6 = alloca %struct.efa_admin_mmio_req_read_less_resp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.efa_com_dev* %0, %struct.efa_com_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.efa_com_dev*, %struct.efa_com_dev** %3, align 8
  %11 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %10, i32 0, i32 2
  store %struct.efa_com_mmio_read* %11, %struct.efa_com_mmio_read** %5, align 8
  %12 = load %struct.efa_com_mmio_read*, %struct.efa_com_mmio_read** %5, align 8
  %13 = getelementptr inbounds %struct.efa_com_mmio_read, %struct.efa_com_mmio_read* %12, i32 0, i32 3
  %14 = load %struct.efa_admin_mmio_req_read_less_resp*, %struct.efa_admin_mmio_req_read_less_resp** %13, align 8
  store %struct.efa_admin_mmio_req_read_less_resp* %14, %struct.efa_admin_mmio_req_read_less_resp** %6, align 8
  %15 = load %struct.efa_com_mmio_read*, %struct.efa_com_mmio_read** %5, align 8
  %16 = getelementptr inbounds %struct.efa_com_mmio_read, %struct.efa_com_mmio_read* %15, i32 0, i32 1
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.efa_com_mmio_read*, %struct.efa_com_mmio_read** %5, align 8
  %19 = getelementptr inbounds %struct.efa_com_mmio_read, %struct.efa_com_mmio_read* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load %struct.efa_com_mmio_read*, %struct.efa_com_mmio_read** %5, align 8
  %23 = getelementptr inbounds %struct.efa_com_mmio_read, %struct.efa_com_mmio_read* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, 154
  %27 = trunc i64 %26 to i32
  %28 = load %struct.efa_admin_mmio_req_read_less_resp*, %struct.efa_admin_mmio_req_read_less_resp** %6, align 8
  %29 = getelementptr inbounds %struct.efa_admin_mmio_req_read_less_resp, %struct.efa_admin_mmio_req_read_less_resp* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @EFA_REGS_MMIO_REG_READ_REG_OFF_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* @EFA_REGS_MMIO_REG_READ_REG_OFF_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.efa_com_mmio_read*, %struct.efa_com_mmio_read** %5, align 8
  %36 = getelementptr inbounds %struct.efa_com_mmio_read, %struct.efa_com_mmio_read* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @EFA_REGS_MMIO_REG_READ_REQ_ID_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.efa_com_dev*, %struct.efa_com_dev** %3, align 8
  %44 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @EFA_REGS_MMIO_REG_READ_OFF, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load i64, i64* @jiffies, align 8
  %50 = load %struct.efa_com_mmio_read*, %struct.efa_com_mmio_read** %5, align 8
  %51 = getelementptr inbounds %struct.efa_com_mmio_read, %struct.efa_com_mmio_read* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @usecs_to_jiffies(i32 %52)
  %54 = add i64 %49, %53
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %67, %2
  %56 = load %struct.efa_admin_mmio_req_read_less_resp*, %struct.efa_admin_mmio_req_read_less_resp** %6, align 8
  %57 = getelementptr inbounds %struct.efa_admin_mmio_req_read_less_resp, %struct.efa_admin_mmio_req_read_less_resp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @READ_ONCE(i32 %58)
  %60 = load %struct.efa_com_mmio_read*, %struct.efa_com_mmio_read** %5, align 8
  %61 = getelementptr inbounds %struct.efa_com_mmio_read, %struct.efa_com_mmio_read* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %71

65:                                               ; preds = %55
  %66 = call i32 @udelay(i32 1)
  br label %67

67:                                               ; preds = %65
  %68 = load i64, i64* %7, align 8
  %69 = call i64 @time_is_after_jiffies(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %55, label %71

71:                                               ; preds = %67, %64
  %72 = load %struct.efa_admin_mmio_req_read_less_resp*, %struct.efa_admin_mmio_req_read_less_resp** %6, align 8
  %73 = getelementptr inbounds %struct.efa_admin_mmio_req_read_less_resp, %struct.efa_admin_mmio_req_read_less_resp* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.efa_com_mmio_read*, %struct.efa_com_mmio_read** %5, align 8
  %76 = getelementptr inbounds %struct.efa_com_mmio_read, %struct.efa_com_mmio_read* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %71
  %80 = load %struct.efa_com_dev*, %struct.efa_com_dev** %3, align 8
  %81 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.efa_com_mmio_read*, %struct.efa_com_mmio_read** %5, align 8
  %84 = getelementptr inbounds %struct.efa_com_mmio_read, %struct.efa_com_mmio_read* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.efa_admin_mmio_req_read_less_resp*, %struct.efa_admin_mmio_req_read_less_resp** %6, align 8
  %88 = getelementptr inbounds %struct.efa_admin_mmio_req_read_less_resp, %struct.efa_admin_mmio_req_read_less_resp* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.efa_admin_mmio_req_read_less_resp*, %struct.efa_admin_mmio_req_read_less_resp** %6, align 8
  %91 = getelementptr inbounds %struct.efa_admin_mmio_req_read_less_resp, %struct.efa_admin_mmio_req_read_less_resp* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, ...) @ibdev_err_ratelimited(i32 %82, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86, i32 %89, i32 %92)
  %94 = load i32, i32* @EFA_MMIO_READ_INVALID, align 4
  store i32 %94, i32* %9, align 4
  br label %111

95:                                               ; preds = %71
  %96 = load %struct.efa_admin_mmio_req_read_less_resp*, %struct.efa_admin_mmio_req_read_less_resp** %6, align 8
  %97 = getelementptr inbounds %struct.efa_admin_mmio_req_read_less_resp, %struct.efa_admin_mmio_req_read_less_resp* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.efa_com_dev*, %struct.efa_com_dev** %3, align 8
  %103 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i32, i8*, ...) @ibdev_err_ratelimited(i32 %104, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @EFA_MMIO_READ_INVALID, align 4
  store i32 %106, i32* %9, align 4
  br label %111

107:                                              ; preds = %95
  %108 = load %struct.efa_admin_mmio_req_read_less_resp*, %struct.efa_admin_mmio_req_read_less_resp** %6, align 8
  %109 = getelementptr inbounds %struct.efa_admin_mmio_req_read_less_resp, %struct.efa_admin_mmio_req_read_less_resp* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %107, %101, %79
  %112 = load %struct.efa_com_mmio_read*, %struct.efa_com_mmio_read** %5, align 8
  %113 = getelementptr inbounds %struct.efa_com_mmio_read, %struct.efa_com_mmio_read* %112, i32 0, i32 1
  %114 = call i32 @spin_unlock(i32* %113)
  %115 = load i32, i32* %9, align 4
  ret i32 %115
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @ibdev_err_ratelimited(i32, i8*, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
