; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_lmc_threaded_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_lmc_threaded_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.thunderx_lmc* }
%struct.thunderx_lmc = type { i32, %struct.TYPE_2__*, %struct.lmc_err_ctx*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lmc_err_ctx = type { i32, i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@LMC_MESSAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LMC_OTHER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"LMC_INT: %016llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"LMC_FADR: %016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"LMC_NXM_FADR: %016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"LMC_SCRAM_FADR: %016llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"LMC_ECC_SYND: %016llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"DIMM %lld rank %lld bank %lld row %lld col %lld\00", align 1
@lmc_errors = common dso_local global i32 0, align 4
@LMC_INT_UE = common dso_local global i32 0, align 4
@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@LMC_INT_CE = common dso_local global i32 0, align 4
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @thunderx_lmc_threaded_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunderx_lmc_threaded_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.thunderx_lmc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.lmc_err_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.mem_ctl_info*
  store %struct.mem_ctl_info* %14, %struct.mem_ctl_info** %5, align 8
  %15 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %16 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %15, i32 0, i32 0
  %17 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %16, align 8
  store %struct.thunderx_lmc* %17, %struct.thunderx_lmc** %6, align 8
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @LMC_MESSAGE_SIZE, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kmalloc(i32 %19, i32 %20)
  store i8* %21, i8** %11, align 8
  %22 = load i32, i32* @LMC_OTHER_SIZE, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kmalloc(i32 %22, i32 %23)
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %2
  br label %175

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %168, %31
  %33 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %34 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %37 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %40 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %39, i32 0, i32 2
  %41 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %40, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.lmc_err_ctx* %41)
  %43 = call i64 @CIRC_CNT(i32 %35, i32 %38, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %173

45:                                               ; preds = %32
  %46 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %47 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %50 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %49, i32 0, i32 2
  %51 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %50, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.lmc_err_ctx* %51)
  %53 = call i64 @ring_pos(i32 %48, i32 %52)
  store i64 %53, i64* %8, align 8
  %54 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %55 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %54, i32 0, i32 2
  %56 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %56, i64 %57
  store %struct.lmc_err_ctx* %58, %struct.lmc_err_ctx** %9, align 8
  %59 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %60 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %9, align 8
  %64 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_dbg(i32* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %68 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %9, align 8
  %72 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_dbg(i32* %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %76 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %9, align 8
  %80 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_dbg(i32* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %84 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %9, align 8
  %88 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_dbg(i32* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %92 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %9, align 8
  %96 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dev_dbg(i32* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = load i8*, i8** %11, align 8
  %100 = load i32, i32* @LMC_MESSAGE_SIZE, align 4
  %101 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %9, align 8
  %102 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @LMC_FADR_FDIMM(i32 %103)
  %105 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %9, align 8
  %106 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @LMC_FADR_FBUNK(i32 %107)
  %109 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %9, align 8
  %110 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @LMC_FADR_FBANK(i32 %111)
  %113 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %9, align 8
  %114 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @LMC_FADR_FROW(i32 %115)
  %117 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %9, align 8
  %118 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @LMC_FADR_FCOL(i32 %119)
  %121 = call i32 @snprintf(i8* %99, i32 %100, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %104, i32 %108, i32 %112, i32 %116, i32 %120)
  %122 = load i8*, i8** %12, align 8
  %123 = load i32, i32* @LMC_OTHER_SIZE, align 4
  %124 = load i32, i32* @lmc_errors, align 4
  %125 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %9, align 8
  %126 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @decode_register(i8* %122, i32 %123, i32 %124, i32 %127)
  %129 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %9, align 8
  %130 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %133 = call i32 @thunderx_faddr_to_phys(i32 %131, %struct.thunderx_lmc* %132)
  store i32 %133, i32* %7, align 4
  %134 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %9, align 8
  %135 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @LMC_INT_UE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %45
  %141 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %142 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @phys_to_pfn(i32 %143)
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @offset_in_page(i32 %145)
  %147 = load i8*, i8** %11, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = call i32 @edac_mc_handle_error(i32 %141, %struct.mem_ctl_info* %142, i32 1, i32 %144, i32 %146, i32 0, i32 -1, i32 -1, i32 -1, i8* %147, i8* %148)
  br label %168

150:                                              ; preds = %45
  %151 = load %struct.lmc_err_ctx*, %struct.lmc_err_ctx** %9, align 8
  %152 = getelementptr inbounds %struct.lmc_err_ctx, %struct.lmc_err_ctx* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @LMC_INT_CE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %150
  %158 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %159 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @phys_to_pfn(i32 %160)
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @offset_in_page(i32 %162)
  %164 = load i8*, i8** %11, align 8
  %165 = load i8*, i8** %12, align 8
  %166 = call i32 @edac_mc_handle_error(i32 %158, %struct.mem_ctl_info* %159, i32 1, i32 %161, i32 %163, i32 0, i32 -1, i32 -1, i32 -1, i8* %164, i8* %165)
  br label %167

167:                                              ; preds = %157, %150
  br label %168

168:                                              ; preds = %167, %140
  %169 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %6, align 8
  %170 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 8
  br label %32

173:                                              ; preds = %32
  %174 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %174, i32* %10, align 4
  br label %175

175:                                              ; preds = %173, %30
  %176 = load i8*, i8** %11, align 8
  %177 = call i32 @kfree(i8* %176)
  %178 = load i8*, i8** %12, align 8
  %179 = call i32 @kfree(i8* %178)
  %180 = load i32, i32* %10, align 4
  ret i32 %180
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.lmc_err_ctx*) #1

declare dso_local i64 @ring_pos(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LMC_FADR_FDIMM(i32) #1

declare dso_local i32 @LMC_FADR_FBUNK(i32) #1

declare dso_local i32 @LMC_FADR_FBANK(i32) #1

declare dso_local i32 @LMC_FADR_FROW(i32) #1

declare dso_local i32 @LMC_FADR_FCOL(i32) #1

declare dso_local i32 @decode_register(i8*, i32, i32, i32) #1

declare dso_local i32 @thunderx_faddr_to_phys(i32, %struct.thunderx_lmc*) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @phys_to_pfn(i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
