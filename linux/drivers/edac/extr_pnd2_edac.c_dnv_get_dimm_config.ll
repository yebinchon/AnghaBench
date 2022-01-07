; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_dnv_get_dimm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_dnv_get_dimm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.d_cr_drp = type { i32, i32, i32, i32, i64, i64 }
%struct.mem_ctl_info = type { i32, i32, i32 }
%struct.dimm_info = type { i32, i32, i32, i32, i32, i32 }

@DNV_MAX_DIMMS = common dso_local global i32 0, align 4
@dsch = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MEM_DDR4 = common dso_local global i32 0, align 4
@MEM_DDR3 = common dso_local global i32 0, align 4
@DNV_NUM_CHANNELS = common dso_local global i32 0, align 4
@dmap4 = common dso_local global %struct.TYPE_5__* null, align 8
@dmap1 = common dso_local global %struct.TYPE_6__* null, align 8
@drp = common dso_local global %struct.d_cr_drp* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"No allocated DIMM for channel %d DIMM %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Channel %d DIMM %d: %lld MByte DIMM\0A\00", align 1
@dnv_dtypes = common dso_local global i32* null, align 8
@EDAC_SECDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Chan#%d_DIMM#%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @dnv_get_dimm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dnv_get_dimm_config(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dimm_info*, align 8
  %12 = alloca %struct.d_cr_drp*, align 8
  %13 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %14 = load i32, i32* @DNV_MAX_DIMMS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dsch, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @MEM_DDR4, align 4
  store i32 %21, i32* %10, align 4
  store i32 16, i32* %7, align 4
  store i32 10, i32* %9, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @MEM_DDR3, align 4
  store i32 %23, i32* %10, align 4
  store i32 8, i32* %7, align 4
  br label %24

24:                                               ; preds = %22, %20
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %197, %24
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @DNV_NUM_CHANNELS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %200

29:                                               ; preds = %25
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dmap4, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 31
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 14, i32* %8, align 4
  br label %69

38:                                               ; preds = %29
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dmap4, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 31
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 15, i32* %8, align 4
  br label %68

47:                                               ; preds = %38
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dmap4, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 31
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 16, i32* %8, align 4
  br label %67

56:                                               ; preds = %47
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dmap4, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 31
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 17, i32* %8, align 4
  br label %66

65:                                               ; preds = %56
  store i32 18, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %64
  br label %67

67:                                               ; preds = %66, %55
  br label %68

68:                                               ; preds = %67, %46
  br label %69

69:                                               ; preds = %68, %37
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @MEM_DDR3, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dmap1, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 63
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i32 12, i32* %9, align 4
  br label %83

82:                                               ; preds = %73
  store i32 10, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %81
  br label %84

84:                                               ; preds = %83, %69
  %85 = load %struct.d_cr_drp*, %struct.d_cr_drp** @drp, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.d_cr_drp, %struct.d_cr_drp* %85, i64 %87
  store %struct.d_cr_drp* %88, %struct.d_cr_drp** %12, align 8
  %89 = load %struct.d_cr_drp*, %struct.d_cr_drp** %12, align 8
  %90 = getelementptr inbounds %struct.d_cr_drp, %struct.d_cr_drp* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.d_cr_drp*, %struct.d_cr_drp** %12, align 8
  %93 = getelementptr inbounds %struct.d_cr_drp, %struct.d_cr_drp* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %91, %94
  %96 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %95, i32* %96, align 16
  %97 = load %struct.d_cr_drp*, %struct.d_cr_drp** %12, align 8
  %98 = getelementptr inbounds %struct.d_cr_drp, %struct.d_cr_drp* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.d_cr_drp*, %struct.d_cr_drp** %12, align 8
  %101 = getelementptr inbounds %struct.d_cr_drp, %struct.d_cr_drp* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  %104 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %103, i32* %104, align 4
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %193, %84
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @DNV_MAX_DIMMS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %196

109:                                              ; preds = %105
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %17, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  br label %193

116:                                              ; preds = %109
  %117 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %118 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %121 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %124 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call %struct.dimm_info* @EDAC_DIMM_PTR(i32 %119, i32 %122, i32 %125, i32 %126, i32 %127, i32 0)
  store %struct.dimm_info* %128, %struct.dimm_info** %11, align 8
  %129 = load %struct.dimm_info*, %struct.dimm_info** %11, align 8
  %130 = icmp ne %struct.dimm_info* %129, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %116
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* %4, align 4
  %134 = call i32 (i32, i8*, i32, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %132, i32 %133)
  br label %193

135:                                              ; preds = %116
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %17, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %7, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = load i32, i32* %8, align 4
  %144 = zext i32 %143 to i64
  %145 = shl i64 1, %144
  %146 = mul i64 %142, %145
  %147 = load i32, i32* %9, align 4
  %148 = zext i32 %147 to i64
  %149 = shl i64 1, %148
  %150 = mul i64 %146, %149
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* %13, align 4
  %155 = ashr i32 %154, 17
  %156 = call i32 (i32, i8*, i32, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %152, i32 %153, i32 %155)
  %157 = load i32, i32* %13, align 4
  %158 = ashr i32 %157, 17
  %159 = call i32 @MiB_TO_PAGES(i32 %158)
  %160 = load %struct.dimm_info*, %struct.dimm_info** %11, align 8
  %161 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 4
  %162 = load %struct.dimm_info*, %struct.dimm_info** %11, align 8
  %163 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %162, i32 0, i32 0
  store i32 32, i32* %163, align 4
  %164 = load i32*, i32** @dnv_dtypes, align 8
  %165 = load i32, i32* %4, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %135
  %168 = load %struct.d_cr_drp*, %struct.d_cr_drp** %12, align 8
  %169 = getelementptr inbounds %struct.d_cr_drp, %struct.d_cr_drp* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  br label %175

171:                                              ; preds = %135
  %172 = load %struct.d_cr_drp*, %struct.d_cr_drp** %12, align 8
  %173 = getelementptr inbounds %struct.d_cr_drp, %struct.d_cr_drp* %172, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  br label %175

175:                                              ; preds = %171, %167
  %176 = phi i64 [ %170, %167 ], [ %174, %171 ]
  %177 = getelementptr inbounds i32, i32* %164, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.dimm_info*, %struct.dimm_info** %11, align 8
  %180 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.dimm_info*, %struct.dimm_info** %11, align 8
  %183 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* @EDAC_SECDED, align 4
  %185 = load %struct.dimm_info*, %struct.dimm_info** %11, align 8
  %186 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 4
  %187 = load %struct.dimm_info*, %struct.dimm_info** %11, align 8
  %188 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* %4, align 4
  %192 = call i32 @snprintf(i32 %189, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %175, %131, %115
  %194 = load i32, i32* %4, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %4, align 4
  br label %105

196:                                              ; preds = %105
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %3, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %3, align 4
  br label %25

200:                                              ; preds = %25
  %201 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %201)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.dimm_info* @EDAC_DIMM_PTR(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @MiB_TO_PAGES(i32) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
