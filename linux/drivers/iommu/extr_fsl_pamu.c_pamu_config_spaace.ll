; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_pamu_config_spaace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_fsl_pamu.c_pamu_config_spaace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paace = type { i64, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"Invalid subwindow count\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAACE_V_VALID = common dso_local global i64 0, align 8
@SPAACE_AF_LIODN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid liodn entry\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@PAMU_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"subwindow size out of range, or not a power of 2\0A\00", align 1
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"real page number out of range\0A\00", align 1
@PAACE_WIN_SWSE = common dso_local global i32 0, align 4
@PAACE_IA_ATM = common dso_local global i32 0, align 4
@PAACE_ATM_WINDOW_XLATE = common dso_local global i64 0, align 8
@PAACE_WIN_TWBAL = common dso_local global i32 0, align 4
@PAACE_AF_AP = common dso_local global i32 0, align 4
@OME_NUMBER_ENTRIES = common dso_local global i64 0, align 8
@PAACE_IA_OTM = common dso_local global i32 0, align 4
@PAACE_OTM_INDEXED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"bad operation mapping index: %d\0A\00", align 1
@PAACE_IA_CID = common dso_local global i32 0, align 4
@PAACE_AF_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pamu_config_spaace(i32 %0, i64 %1, i64 %2, i32 %3, i64 %4, i64 %5, i64 %6, i64 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.paace*, align 8
  store i32 %0, i32* %12, align 4
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %23 = load i64, i64* %13, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %10
  %26 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  br label %185

29:                                               ; preds = %10
  %30 = load i32, i32* %12, align 4
  %31 = call %struct.paace* @pamu_get_ppaace(i32 %30)
  store %struct.paace* %31, %struct.paace** %22, align 8
  %32 = load i64, i64* %14, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %29
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* %13, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %34
  %39 = load %struct.paace*, %struct.paace** %22, align 8
  %40 = icmp ne %struct.paace* %39, null
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = load %struct.paace*, %struct.paace** %22, align 8
  %43 = load i64, i64* %14, align 8
  %44 = sub nsw i64 %43, 1
  %45 = call %struct.paace* @pamu_get_spaace(%struct.paace* %42, i64 %44)
  store %struct.paace* %45, %struct.paace** %22, align 8
  %46 = load %struct.paace*, %struct.paace** %22, align 8
  %47 = icmp ne %struct.paace* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %41
  %49 = load %struct.paace*, %struct.paace** %22, align 8
  %50 = getelementptr inbounds %struct.paace, %struct.paace* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PAACE_V_VALID, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %48
  %56 = load %struct.paace*, %struct.paace** %22, align 8
  %57 = call i32 @pamu_init_spaace(%struct.paace* %56)
  %58 = load %struct.paace*, %struct.paace** %22, align 8
  %59 = getelementptr inbounds %struct.paace, %struct.paace* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @SPAACE_AF_LIODN, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = call i32 @set_bf(i64 %60, i32 %61, i64 %63)
  br label %65

65:                                               ; preds = %55, %48, %41
  br label %66

66:                                               ; preds = %65, %38, %34, %29
  %67 = load %struct.paace*, %struct.paace** %22, align 8
  %68 = icmp ne %struct.paace* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %11, align 4
  br label %185

73:                                               ; preds = %66
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = sub nsw i32 %75, 1
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @PAMU_PAGE_SIZE, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79, %73
  %84 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %11, align 4
  br label %185

87:                                               ; preds = %79
  %88 = load i64, i64* %17, align 8
  %89 = load i64, i64* @ULONG_MAX, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %11, align 4
  br label %185

95:                                               ; preds = %87
  %96 = load %struct.paace*, %struct.paace** %22, align 8
  %97 = getelementptr inbounds %struct.paace, %struct.paace* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @PAACE_WIN_SWSE, align 4
  %100 = load i32, i32* %15, align 4
  %101 = call i64 @map_addrspace_size_to_wse(i32 %100)
  %102 = call i32 @set_bf(i64 %98, i32 %99, i64 %101)
  %103 = load %struct.paace*, %struct.paace** %22, align 8
  %104 = getelementptr inbounds %struct.paace, %struct.paace* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @PAACE_IA_ATM, align 4
  %107 = load i64, i64* @PAACE_ATM_WINDOW_XLATE, align 8
  %108 = call i32 @set_bf(i64 %105, i32 %106, i64 %107)
  %109 = load i64, i64* %17, align 8
  %110 = lshr i64 %109, 20
  %111 = load %struct.paace*, %struct.paace** %22, align 8
  %112 = getelementptr inbounds %struct.paace, %struct.paace* %111, i32 0, i32 3
  store i64 %110, i64* %112, align 8
  %113 = load %struct.paace*, %struct.paace** %22, align 8
  %114 = getelementptr inbounds %struct.paace, %struct.paace* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @PAACE_WIN_TWBAL, align 4
  %117 = load i64, i64* %17, align 8
  %118 = call i32 @set_bf(i64 %115, i32 %116, i64 %117)
  %119 = load %struct.paace*, %struct.paace** %22, align 8
  %120 = getelementptr inbounds %struct.paace, %struct.paace* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @PAACE_AF_AP, align 4
  %123 = load i32, i32* %21, align 4
  %124 = sext i32 %123 to i64
  %125 = call i32 @set_bf(i64 %121, i32 %122, i64 %124)
  %126 = load i64, i64* %18, align 8
  %127 = xor i64 %126, -1
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %95
  %130 = load i64, i64* %18, align 8
  %131 = load %struct.paace*, %struct.paace** %22, align 8
  %132 = getelementptr inbounds %struct.paace, %struct.paace* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i64 %130, i64* %134, align 8
  br label %135

135:                                              ; preds = %129, %95
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* @OME_NUMBER_ENTRIES, align 8
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %135
  %140 = load %struct.paace*, %struct.paace** %22, align 8
  %141 = getelementptr inbounds %struct.paace, %struct.paace* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* @PAACE_IA_OTM, align 4
  %144 = load i64, i64* @PAACE_OTM_INDEXED, align 8
  %145 = call i32 @set_bf(i64 %142, i32 %143, i64 %144)
  %146 = load i64, i64* %16, align 8
  %147 = load %struct.paace*, %struct.paace** %22, align 8
  %148 = getelementptr inbounds %struct.paace, %struct.paace* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  store i64 %146, i64* %150, align 8
  br label %161

151:                                              ; preds = %135
  %152 = load i64, i64* %16, align 8
  %153 = xor i64 %152, -1
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = load i64, i64* %16, align 8
  %157 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %11, align 4
  br label %185

160:                                              ; preds = %151
  br label %161

161:                                              ; preds = %160, %139
  %162 = load i64, i64* %19, align 8
  %163 = xor i64 %162, -1
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %161
  %166 = load %struct.paace*, %struct.paace** %22, align 8
  %167 = getelementptr inbounds %struct.paace, %struct.paace* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* @PAACE_IA_CID, align 4
  %170 = load i64, i64* %19, align 8
  %171 = call i32 @set_bf(i64 %168, i32 %169, i64 %170)
  br label %172

172:                                              ; preds = %165, %161
  %173 = call i32 (...) @smp_wmb()
  %174 = load i32, i32* %20, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %172
  %177 = load %struct.paace*, %struct.paace** %22, align 8
  %178 = getelementptr inbounds %struct.paace, %struct.paace* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* @PAACE_AF_V, align 4
  %181 = load i64, i64* @PAACE_V_VALID, align 8
  %182 = call i32 @set_bf(i64 %179, i32 %180, i64 %181)
  br label %183

183:                                              ; preds = %176, %172
  %184 = call i32 (...) @mb()
  store i32 0, i32* %11, align 4
  br label %185

185:                                              ; preds = %183, %155, %91, %83, %69, %25
  %186 = load i32, i32* %11, align 4
  ret i32 %186
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.paace* @pamu_get_ppaace(i32) #1

declare dso_local %struct.paace* @pamu_get_spaace(%struct.paace*, i64) #1

declare dso_local i32 @pamu_init_spaace(%struct.paace*) #1

declare dso_local i32 @set_bf(i64, i32, i64) #1

declare dso_local i64 @map_addrspace_size_to_wse(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
