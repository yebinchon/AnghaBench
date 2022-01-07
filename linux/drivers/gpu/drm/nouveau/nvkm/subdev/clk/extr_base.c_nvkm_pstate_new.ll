; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_pstate_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_pstate_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32, i32, %struct.nvkm_domain*, %struct.TYPE_5__ }
%struct.nvkm_domain = type { i64, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvkm_pstate = type { i32, i32, i32, i32, i32, i32, %struct.nvkm_cstate }
%struct.nvkm_cstate = type { i32*, i32 }
%struct.nvbios_cstepE = type { i32 }
%struct.nvbios_perfE = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvbios_perfS = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv_clk_src_core = common dso_local global i64 0, align 8
@nv_clk_src_shader = common dso_local global i64 0, align 8
@nv_clk_src_mem = common dso_local global i64 0, align 8
@nv_clk_src_vdec = common dso_local global i64 0, align 8
@nv_clk_src_dom6 = common dso_local global i64 0, align 8
@nv_clk_src_max = common dso_local global i64 0, align 8
@NVKM_CLK_DOM_FLAG_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*, i32)* @nvkm_pstate_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_pstate_new(%struct.nvkm_clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca %struct.nvkm_domain*, align 8
  %8 = alloca %struct.nvkm_pstate*, align 8
  %9 = alloca %struct.nvkm_cstate*, align 8
  %10 = alloca %struct.nvbios_cstepE, align 4
  %11 = alloca %struct.nvbios_perfE, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.nvbios_perfS, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %22 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %23 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.nvkm_bios*, %struct.nvkm_bios** %26, align 8
  store %struct.nvkm_bios* %27, %struct.nvkm_bios** %6, align 8
  %28 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %29 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %28, i32 0, i32 2
  %30 = load %struct.nvkm_domain*, %struct.nvkm_domain** %29, align 8
  %31 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %30, i64 -1
  store %struct.nvkm_domain* %31, %struct.nvkm_domain** %7, align 8
  %32 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @nvbios_perfEp(%struct.nvkm_bios* %32, i32 %33, i32* %12, i32* %13, i32* %14, i32* %15, %struct.nvbios_perfE* %11)
  store i64 %34, i64* %16, align 8
  %35 = load i64, i64* %16, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %209

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %11, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 255
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %209

45:                                               ; preds = %40
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.nvkm_pstate* @kzalloc(i32 40, i32 %46)
  store %struct.nvkm_pstate* %47, %struct.nvkm_pstate** %8, align 8
  %48 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %8, align 8
  %49 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %48, i32 0, i32 6
  store %struct.nvkm_cstate* %49, %struct.nvkm_cstate** %9, align 8
  %50 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %8, align 8
  %51 = icmp ne %struct.nvkm_pstate* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %209

55:                                               ; preds = %45
  %56 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %8, align 8
  %57 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %56, i32 0, i32 5
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %11, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %8, align 8
  %62 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %11, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %8, align 8
  %66 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %11, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %8, align 8
  %70 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %11, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %8, align 8
  %74 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %11, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %9, align 8
  %78 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %11, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %9, align 8
  %82 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @nv_clk_src_core, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %11, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %9, align 8
  %89 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @nv_clk_src_shader, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 %87, i32* %92, align 4
  %93 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %11, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %9, align 8
  %96 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @nv_clk_src_mem, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 %94, i32* %99, align 4
  %100 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %11, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %9, align 8
  %103 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @nv_clk_src_vdec, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32 %101, i32* %106, align 4
  %107 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %11, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %9, align 8
  %110 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @nv_clk_src_dom6, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32 %108, i32* %113, align 4
  br label %114

114:                                              ; preds = %164, %142, %55
  %115 = load i32, i32* %12, align 4
  %116 = icmp sge i32 %115, 64
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load %struct.nvkm_domain*, %struct.nvkm_domain** %7, align 8
  %119 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %118, i32 1
  store %struct.nvkm_domain* %119, %struct.nvkm_domain** %7, align 8
  %120 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @nv_clk_src_max, align 8
  %123 = icmp ne i64 %121, %122
  br label %124

124:                                              ; preds = %117, %114
  %125 = phi i1 [ false, %114 ], [ %123, %117 ]
  br i1 %125, label %126, label %175

126:                                              ; preds = %124
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %19, align 4
  %129 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %130 = load i64, i64* %16, align 8
  %131 = load %struct.nvkm_domain*, %struct.nvkm_domain** %7, align 8
  %132 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %15, align 4
  %136 = call i64 @nvbios_perfSp(%struct.nvkm_bios* %129, i64 %130, i32 %133, i32* %18, i32* %19, i32 %134, i32 %135, %struct.nvbios_perfS* %17)
  store i64 %136, i64* %20, align 8
  %137 = load i64, i64* %20, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %126
  %140 = load i32, i32* %18, align 4
  %141 = icmp ne i32 %140, 64
  br i1 %141, label %142, label %143

142:                                              ; preds = %139, %126
  br label %114

143:                                              ; preds = %139
  %144 = load %struct.nvkm_domain*, %struct.nvkm_domain** %7, align 8
  %145 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @NVKM_CLK_DOM_FLAG_CORE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %143
  %151 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %152 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %8, align 8
  %153 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.nvkm_domain*, %struct.nvkm_domain** %7, align 8
  %156 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.nvbios_perfS, %struct.nvbios_perfS* %17, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @nvkm_clk_adjust(%struct.nvkm_clk* %151, i32 0, i32 %154, i32 %157, i32 %160)
  %162 = getelementptr inbounds %struct.nvbios_perfS, %struct.nvbios_perfS* %17, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %150, %143
  %165 = getelementptr inbounds %struct.nvbios_perfS, %struct.nvbios_perfS* %17, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %9, align 8
  %169 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.nvkm_domain*, %struct.nvkm_domain** %7, align 8
  %172 = getelementptr inbounds %struct.nvkm_domain, %struct.nvkm_domain* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  store i32 %167, i32* %174, align 4
  br label %114

175:                                              ; preds = %124
  %176 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %177 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %8, align 8
  %178 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @nvbios_cstepEm(%struct.nvkm_bios* %176, i32 %179, i32* %12, i32* %13, %struct.nvbios_cstepE* %10)
  store i64 %180, i64* %16, align 8
  %181 = load i64, i64* %16, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %175
  %184 = getelementptr inbounds %struct.nvbios_cstepE, %struct.nvbios_cstepE* %10, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %21, align 4
  br label %186

186:                                              ; preds = %191, %183
  %187 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %188 = load i32, i32* %21, align 4
  %189 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %8, align 8
  %190 = call i32 @nvkm_cstate_new(%struct.nvkm_clk* %187, i32 %188, %struct.nvkm_pstate* %189)
  br label %191

191:                                              ; preds = %186
  %192 = load i32, i32* %21, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %21, align 4
  %194 = icmp ne i32 %192, 0
  br i1 %194, label %186, label %195

195:                                              ; preds = %191
  br label %196

196:                                              ; preds = %195, %175
  %197 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %198 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %8, align 8
  %199 = call i32 @nvkm_pstate_info(%struct.nvkm_clk* %197, %struct.nvkm_pstate* %198)
  %200 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %8, align 8
  %201 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %200, i32 0, i32 0
  %202 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %203 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %202, i32 0, i32 1
  %204 = call i32 @list_add_tail(i32* %201, i32* %203)
  %205 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %206 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 8
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %196, %52, %44, %37
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i64 @nvbios_perfEp(%struct.nvkm_bios*, i32, i32*, i32*, i32*, i32*, %struct.nvbios_perfE*) #1

declare dso_local %struct.nvkm_pstate* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @nvbios_perfSp(%struct.nvkm_bios*, i64, i32, i32*, i32*, i32, i32, %struct.nvbios_perfS*) #1

declare dso_local i32 @nvkm_clk_adjust(%struct.nvkm_clk*, i32, i32, i32, i32) #1

declare dso_local i64 @nvbios_cstepEm(%struct.nvkm_bios*, i32, i32*, i32*, %struct.nvbios_cstepE*) #1

declare dso_local i32 @nvkm_cstate_new(%struct.nvkm_clk*, i32, %struct.nvkm_pstate*) #1

declare dso_local i32 @nvkm_pstate_info(%struct.nvkm_clk*, %struct.nvkm_pstate*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
