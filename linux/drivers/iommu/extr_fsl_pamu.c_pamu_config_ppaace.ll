; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_pamu_config_ppaace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_pamu_config_ppaace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paace = type { i32, i64, i64, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PAMU_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"window size too small or not a power of two %pa\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"window address is not aligned with window size\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@PPAACE_AF_WSE = common dso_local global i32 0, align 4
@PAMU_PAGE_SHIFT = common dso_local global i32 0, align 4
@PPAACE_AF_WBAL = common dso_local global i32 0, align 4
@OME_NUMBER_ENTRIES = common dso_local global i32 0, align 4
@PAACE_IA_OTM = common dso_local global i32 0, align 4
@PAACE_OTM_INDEXED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"bad operation mapping index: %d\0A\00", align 1
@PAACE_IA_CID = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"spaace indexes exhausted\0A\00", align 1
@PAACE_IA_WCE = common dso_local global i32 0, align 4
@PPAACE_AF_MW = common dso_local global i32 0, align 4
@PAACE_IA_ATM = common dso_local global i32 0, align 4
@PAACE_ATM_WINDOW_XLATE = common dso_local global i32 0, align 4
@PAACE_WIN_TWBAL = common dso_local global i32 0, align 4
@PAACE_AF_AP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pamu_config_ppaace(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.paace*, align 8
  %21 = alloca i64, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %9
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @PAMU_PAGE_SIZE, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %9
  %32 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32* %13)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %10, align 4
  br label %189

35:                                               ; preds = %27
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %189

45:                                               ; preds = %35
  %46 = load i32, i32* %11, align 4
  %47 = call %struct.paace* @pamu_get_ppaace(i32 %46)
  store %struct.paace* %47, %struct.paace** %20, align 8
  %48 = load %struct.paace*, %struct.paace** %20, align 8
  %49 = icmp ne %struct.paace* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %189

53:                                               ; preds = %45
  %54 = load %struct.paace*, %struct.paace** %20, align 8
  %55 = getelementptr inbounds %struct.paace, %struct.paace* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PPAACE_AF_WSE, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @map_addrspace_size_to_wse(i32 %58)
  %60 = call i32 @set_bf(i32 %56, i32 %57, i32 %59)
  %61 = load %struct.paace*, %struct.paace** %20, align 8
  %62 = call i32 @pamu_init_ppaace(%struct.paace* %61)
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @PAMU_PAGE_SHIFT, align 4
  %65 = add nsw i32 %64, 20
  %66 = ashr i32 %63, %65
  %67 = load %struct.paace*, %struct.paace** %20, align 8
  %68 = getelementptr inbounds %struct.paace, %struct.paace* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.paace*, %struct.paace** %20, align 8
  %70 = getelementptr inbounds %struct.paace, %struct.paace* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PPAACE_AF_WBAL, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @PAMU_PAGE_SHIFT, align 4
  %75 = ashr i32 %73, %74
  %76 = call i32 @set_bf(i32 %71, i32 %72, i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @OME_NUMBER_ENTRIES, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %53
  %81 = load %struct.paace*, %struct.paace** %20, align 8
  %82 = getelementptr inbounds %struct.paace, %struct.paace* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PAACE_IA_OTM, align 4
  %85 = load i32, i32* @PAACE_OTM_INDEXED, align 4
  %86 = call i32 @set_bf(i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.paace*, %struct.paace** %20, align 8
  %89 = getelementptr inbounds %struct.paace, %struct.paace* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 8
  br label %102

92:                                               ; preds = %53
  %93 = load i32, i32* %14, align 4
  %94 = xor i32 %93, -1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32, i32* %14, align 4
  %98 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %10, align 4
  br label %189

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101, %80
  %103 = load i32, i32* %17, align 4
  %104 = xor i32 %103, -1
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load %struct.paace*, %struct.paace** %20, align 8
  %108 = getelementptr inbounds %struct.paace, %struct.paace* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @PAACE_IA_CID, align 4
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @set_bf(i32 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %106, %102
  %114 = load i32, i32* %16, align 4
  %115 = xor i32 %114, -1
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i32, i32* %16, align 4
  %119 = load %struct.paace*, %struct.paace** %20, align 8
  %120 = getelementptr inbounds %struct.paace, %struct.paace* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 4
  br label %123

123:                                              ; preds = %117, %113
  %124 = load i32, i32* %18, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %153

126:                                              ; preds = %123
  %127 = load i32, i32* %18, align 4
  %128 = sub nsw i32 %127, 1
  %129 = call i64 @pamu_get_fspi_and_allocate(i32 %128)
  store i64 %129, i64* %21, align 8
  %130 = load i64, i64* %21, align 8
  %131 = load i64, i64* @ULONG_MAX, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %10, align 4
  br label %189

137:                                              ; preds = %126
  %138 = load %struct.paace*, %struct.paace** %20, align 8
  %139 = getelementptr inbounds %struct.paace, %struct.paace* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @PAACE_IA_WCE, align 4
  %142 = load i32, i32* %18, align 4
  %143 = call i32 @map_subwindow_cnt_to_wce(i32 %142)
  %144 = call i32 @set_bf(i32 %140, i32 %141, i32 %143)
  %145 = load %struct.paace*, %struct.paace** %20, align 8
  %146 = getelementptr inbounds %struct.paace, %struct.paace* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @PPAACE_AF_MW, align 4
  %149 = call i32 @set_bf(i32 %147, i32 %148, i32 1)
  %150 = load i64, i64* %21, align 8
  %151 = load %struct.paace*, %struct.paace** %20, align 8
  %152 = getelementptr inbounds %struct.paace, %struct.paace* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  br label %187

153:                                              ; preds = %123
  %154 = load %struct.paace*, %struct.paace** %20, align 8
  %155 = getelementptr inbounds %struct.paace, %struct.paace* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @PAACE_IA_ATM, align 4
  %158 = load i32, i32* @PAACE_ATM_WINDOW_XLATE, align 4
  %159 = call i32 @set_bf(i32 %156, i32 %157, i32 %158)
  %160 = load i64, i64* %15, align 8
  %161 = lshr i64 %160, 20
  %162 = load %struct.paace*, %struct.paace** %20, align 8
  %163 = getelementptr inbounds %struct.paace, %struct.paace* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  %164 = load %struct.paace*, %struct.paace** %20, align 8
  %165 = getelementptr inbounds %struct.paace, %struct.paace* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @PAACE_WIN_TWBAL, align 4
  %168 = load i64, i64* %15, align 8
  %169 = trunc i64 %168 to i32
  %170 = call i32 @set_bf(i32 %166, i32 %167, i32 %169)
  %171 = load %struct.paace*, %struct.paace** %20, align 8
  %172 = getelementptr inbounds %struct.paace, %struct.paace* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @PAACE_AF_AP, align 4
  %175 = load i32, i32* %19, align 4
  %176 = call i32 @set_bf(i32 %173, i32 %174, i32 %175)
  %177 = load %struct.paace*, %struct.paace** %20, align 8
  %178 = getelementptr inbounds %struct.paace, %struct.paace* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @PAACE_IA_WCE, align 4
  %181 = call i32 @set_bf(i32 %179, i32 %180, i32 0)
  %182 = load %struct.paace*, %struct.paace** %20, align 8
  %183 = getelementptr inbounds %struct.paace, %struct.paace* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @PPAACE_AF_MW, align 4
  %186 = call i32 @set_bf(i32 %184, i32 %185, i32 0)
  br label %187

187:                                              ; preds = %153, %137
  %188 = call i32 (...) @mb()
  store i32 0, i32* %10, align 4
  br label %189

189:                                              ; preds = %187, %133, %96, %50, %41, %31
  %190 = load i32, i32* %10, align 4
  ret i32 %190
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.paace* @pamu_get_ppaace(i32) #1

declare dso_local i32 @set_bf(i32, i32, i32) #1

declare dso_local i32 @map_addrspace_size_to_wse(i32) #1

declare dso_local i32 @pamu_init_ppaace(%struct.paace*) #1

declare dso_local i64 @pamu_get_fspi_and_allocate(i32) #1

declare dso_local i32 @map_subwindow_cnt_to_wce(i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
