; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_iommu = type { i32, i32, i32, i32, i32*, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@RK_MMU_INT_STATUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@RK_MMU_PAGE_FAULT_ADDR = common dso_local global i32 0, align 4
@RK_MMU_IRQ_PAGE_FAULT = common dso_local global i32 0, align 4
@RK_MMU_STATUS = common dso_local global i32 0, align 4
@RK_MMU_STATUS_PAGE_FAULT_IS_WRITE = common dso_local global i32 0, align 4
@IOMMU_FAULT_WRITE = common dso_local global i32 0, align 4
@IOMMU_FAULT_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Page fault at %pad of type %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Page fault while iommu not attached to domain?\0A\00", align 1
@RK_MMU_CMD_ZAP_CACHE = common dso_local global i32 0, align 4
@RK_MMU_CMD_PAGE_FAULT_DONE = common dso_local global i32 0, align 4
@RK_MMU_IRQ_BUS_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"BUS_ERROR occurred at %pad\0A\00", align 1
@RK_MMU_IRQ_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"unexpected int_status: %#08x\0A\00", align 1
@RK_MMU_INT_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rk_iommu_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_iommu_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rk_iommu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.rk_iommu*
  store %struct.rk_iommu* %15, %struct.rk_iommu** %6, align 8
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %18 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pm_runtime_get_if_in_use(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp sle i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON_ONCE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  br label %197

28:                                               ; preds = %2
  %29 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %30 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %33 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clk_bulk_enable(i32 %31, i32 %34)
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %191

39:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %180, %39
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %43 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %183

46:                                               ; preds = %40
  %47 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %48 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RK_MMU_INT_STATUS, align 4
  %55 = call i8* @rk_iommu_read(i32 %53, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %180

60:                                               ; preds = %46
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %10, align 4
  %62 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %63 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @RK_MMU_PAGE_FAULT_ADDR, align 4
  %70 = call i8* @rk_iommu_read(i32 %68, i32 %69)
  store i8* %70, i8** %9, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @RK_MMU_IRQ_PAGE_FAULT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %147

75:                                               ; preds = %60
  %76 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %77 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @RK_MMU_STATUS, align 4
  %84 = call i8* @rk_iommu_read(i32 %82, i32 %83)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @RK_MMU_STATUS_PAGE_FAULT_IS_WRITE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %75
  %91 = load i32, i32* @IOMMU_FAULT_WRITE, align 4
  br label %94

92:                                               ; preds = %75
  %93 = load i32, i32* @IOMMU_FAULT_READ, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  store i32 %95, i32* %13, align 4
  %96 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %97 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @IOMMU_FAULT_WRITE, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %104 = call i32 (i32, i8*, ...) @dev_err(i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %9, i8* %103)
  %105 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @log_iova(%struct.rk_iommu* %105, i32 %106, i8* %107)
  %109 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %110 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %94
  %114 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %115 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %118 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %9, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @report_iommu_fault(i64 %116, i32 %119, i8* %120, i32 %121)
  br label %128

123:                                              ; preds = %94
  %124 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %125 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32, i8*, ...) @dev_err(i32 %126, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %128

128:                                              ; preds = %123, %113
  %129 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %130 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @RK_MMU_CMD_ZAP_CACHE, align 4
  %137 = call i32 @rk_iommu_base_command(i32 %135, i32 %136)
  %138 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %139 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @RK_MMU_CMD_PAGE_FAULT_DONE, align 4
  %146 = call i32 @rk_iommu_base_command(i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %128, %60
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @RK_MMU_IRQ_BUS_ERROR, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %154 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32, i8*, ...) @dev_err(i32 %155, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8** %9)
  br label %157

157:                                              ; preds = %152, %147
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @RK_MMU_IRQ_MASK, align 4
  %160 = xor i32 %159, -1
  %161 = and i32 %158, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %165 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %8, align 4
  %168 = call i32 (i32, i8*, ...) @dev_err(i32 %166, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %163, %157
  %170 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %171 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %170, i32 0, i32 4
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @RK_MMU_INT_CLEAR, align 4
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @rk_iommu_write(i32 %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %169, %59
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %11, align 4
  br label %40

183:                                              ; preds = %40
  %184 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %185 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %188 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @clk_bulk_disable(i32 %186, i32 %189)
  br label %191

191:                                              ; preds = %183, %38
  %192 = load %struct.rk_iommu*, %struct.rk_iommu** %6, align 8
  %193 = getelementptr inbounds %struct.rk_iommu, %struct.rk_iommu* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @pm_runtime_put(i32 %194)
  %196 = load i32, i32* %10, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %191, %26
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i32 @pm_runtime_get_if_in_use(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @clk_bulk_enable(i32, i32) #1

declare dso_local i8* @rk_iommu_read(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @log_iova(%struct.rk_iommu*, i32, i8*) #1

declare dso_local i32 @report_iommu_fault(i64, i32, i8*, i32) #1

declare dso_local i32 @rk_iommu_base_command(i32, i32) #1

declare dso_local i32 @rk_iommu_write(i32, i32, i32) #1

declare dso_local i32 @clk_bulk_disable(i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
