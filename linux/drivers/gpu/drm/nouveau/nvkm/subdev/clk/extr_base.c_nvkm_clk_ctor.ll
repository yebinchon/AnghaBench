; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_clk_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_base.c_nvkm_clk_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk_func = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_device = type { i32, i32, %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvkm_clk = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_clk_func*, %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }
%struct.nvbios_vpstate_header = type { i32, i32 }
%struct.nvbios_vpstate_entry = type { i32 }

@nvkm_clk = common dso_local global i32 0, align 4
@nvkm_pstate_work = common dso_local global i32 0, align 4
@nvkm_clk_pwrsrc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"NvClkMode\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"NvClkModeAC\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"NvClkModeDC\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"NvBoost\00", align 1
@NVKM_CLK_BOOST_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_clk_ctor(%struct.nvkm_clk_func* %0, %struct.nvkm_device* %1, i32 %2, i32 %3, %struct.nvkm_clk* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_clk_func*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_clk*, align 8
  %12 = alloca %struct.nvkm_subdev*, align 8
  %13 = alloca %struct.nvkm_bios*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.nvbios_vpstate_header, align 4
  %19 = alloca %struct.nvbios_vpstate_entry, align 4
  %20 = alloca %struct.nvbios_vpstate_entry, align 4
  store %struct.nvkm_clk_func* %0, %struct.nvkm_clk_func** %7, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_clk* %4, %struct.nvkm_clk** %11, align 8
  %21 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %22 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %21, i32 0, i32 14
  store %struct.nvkm_subdev* %22, %struct.nvkm_subdev** %12, align 8
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %24 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %23, i32 0, i32 2
  %25 = load %struct.nvkm_bios*, %struct.nvkm_bios** %24, align 8
  store %struct.nvkm_bios* %25, %struct.nvkm_bios** %13, align 8
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %29 = call i32 @nvkm_subdev_ctor(i32* @nvkm_clk, %struct.nvkm_device* %26, i32 %27, %struct.nvkm_subdev* %28)
  %30 = load %struct.nvkm_bios*, %struct.nvkm_bios** %13, align 8
  %31 = icmp ne %struct.nvkm_bios* %30, null
  br i1 %31, label %32, label %61

32:                                               ; preds = %5
  %33 = load %struct.nvkm_bios*, %struct.nvkm_bios** %13, align 8
  %34 = call i32 @nvbios_vpstate_parse(%struct.nvkm_bios* %33, %struct.nvbios_vpstate_header* %18)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %32
  %37 = load %struct.nvkm_bios*, %struct.nvkm_bios** %13, align 8
  %38 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %18, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nvbios_vpstate_entry(%struct.nvkm_bios* %37, %struct.nvbios_vpstate_header* %18, i32 %39, %struct.nvbios_vpstate_entry* %20)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.nvbios_vpstate_entry, %struct.nvbios_vpstate_entry* %20, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 1000
  %46 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %47 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %42, %36
  %49 = load %struct.nvkm_bios*, %struct.nvkm_bios** %13, align 8
  %50 = getelementptr inbounds %struct.nvbios_vpstate_header, %struct.nvbios_vpstate_header* %18, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @nvbios_vpstate_entry(%struct.nvkm_bios* %49, %struct.nvbios_vpstate_header* %18, i32 %51, %struct.nvbios_vpstate_entry* %19)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.nvbios_vpstate_entry, %struct.nvbios_vpstate_entry* %19, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 1000
  %58 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %59 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %48
  br label %61

61:                                               ; preds = %60, %32, %5
  %62 = load %struct.nvkm_clk_func*, %struct.nvkm_clk_func** %7, align 8
  %63 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %64 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %63, i32 0, i32 13
  store %struct.nvkm_clk_func* %62, %struct.nvkm_clk_func** %64, align 8
  %65 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %66 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %65, i32 0, i32 8
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.nvkm_clk_func*, %struct.nvkm_clk_func** %7, align 8
  %69 = getelementptr inbounds %struct.nvkm_clk_func, %struct.nvkm_clk_func* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %72 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %71, i32 0, i32 12
  store i32 %70, i32* %72, align 8
  %73 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %74 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %73, i32 0, i32 2
  store i32 -1, i32* %74, align 8
  %75 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %76 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %75, i32 0, i32 3
  store i32 -1, i32* %76, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %79 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %81 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %80, i32 0, i32 11
  %82 = load i32, i32* @nvkm_pstate_work, align 4
  %83 = call i32 @INIT_WORK(i32* %81, i32 %82)
  %84 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %85 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %84, i32 0, i32 10
  %86 = call i32 @init_waitqueue_head(i32* %85)
  %87 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %88 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %87, i32 0, i32 9
  %89 = call i32 @atomic_set(i32* %88, i32 0)
  %90 = load %struct.nvkm_clk_func*, %struct.nvkm_clk_func** %7, align 8
  %91 = getelementptr inbounds %struct.nvkm_clk_func, %struct.nvkm_clk_func* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = icmp ne %struct.TYPE_2__* %92, null
  br i1 %93, label %104, label %94

94:                                               ; preds = %61
  store i32 0, i32* %15, align 4
  br label %95

95:                                               ; preds = %100, %94
  %96 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  %99 = call i32 @nvkm_pstate_new(%struct.nvkm_clk* %96, i32 %97)
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %14, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %95, label %103

103:                                              ; preds = %100
  br label %131

104:                                              ; preds = %61
  store i32 0, i32* %15, align 4
  br label %105

105:                                              ; preds = %122, %104
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.nvkm_clk_func*, %struct.nvkm_clk_func** %7, align 8
  %108 = getelementptr inbounds %struct.nvkm_clk_func, %struct.nvkm_clk_func* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  %112 = load %struct.nvkm_clk_func*, %struct.nvkm_clk_func** %7, align 8
  %113 = getelementptr inbounds %struct.nvkm_clk_func, %struct.nvkm_clk_func* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %120 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %119, i32 0, i32 8
  %121 = call i32 @list_add_tail(i32* %118, i32* %120)
  br label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  br label %105

125:                                              ; preds = %105
  %126 = load %struct.nvkm_clk_func*, %struct.nvkm_clk_func** %7, align 8
  %127 = getelementptr inbounds %struct.nvkm_clk_func, %struct.nvkm_clk_func* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %130 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %125, %103
  %132 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %133 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %132, i32 0, i32 1
  %134 = load i32, i32* @nvkm_clk_pwrsrc, align 4
  %135 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %136 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %135, i32 0, i32 7
  %137 = call i32 @nvkm_notify_init(i32* null, i32* %133, i32 %134, i32 1, i32* null, i32 0, i32 0, i32* %136)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  %141 = load i32, i32* %14, align 4
  store i32 %141, i32* %6, align 4
  br label %202

142:                                              ; preds = %131
  %143 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %144 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @nvkm_stropt(i32 %145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %16)
  store i8* %146, i8** %17, align 8
  %147 = load i8*, i8** %17, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %164

149:                                              ; preds = %142
  %150 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %151 = load i8*, i8** %17, align 8
  %152 = load i32, i32* %16, align 4
  %153 = call i8* @nvkm_clk_nstate(%struct.nvkm_clk* %150, i8* %151, i32 %152)
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %156 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %158 = load i8*, i8** %17, align 8
  %159 = load i32, i32* %16, align 4
  %160 = call i8* @nvkm_clk_nstate(%struct.nvkm_clk* %157, i8* %158, i32 %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %163 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %149, %142
  %165 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %166 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i8* @nvkm_stropt(i32 %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %16)
  store i8* %168, i8** %17, align 8
  %169 = load i8*, i8** %17, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %179

171:                                              ; preds = %164
  %172 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %173 = load i8*, i8** %17, align 8
  %174 = load i32, i32* %16, align 4
  %175 = call i8* @nvkm_clk_nstate(%struct.nvkm_clk* %172, i8* %173, i32 %174)
  %176 = ptrtoint i8* %175 to i32
  %177 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %178 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %171, %164
  %180 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %181 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i8* @nvkm_stropt(i32 %182, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %16)
  store i8* %183, i8** %17, align 8
  %184 = load i8*, i8** %17, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %194

186:                                              ; preds = %179
  %187 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %188 = load i8*, i8** %17, align 8
  %189 = load i32, i32* %16, align 4
  %190 = call i8* @nvkm_clk_nstate(%struct.nvkm_clk* %187, i8* %188, i32 %189)
  %191 = ptrtoint i8* %190 to i32
  %192 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %193 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 4
  br label %194

194:                                              ; preds = %186, %179
  %195 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %196 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @NVKM_CLK_BOOST_NONE, align 4
  %199 = call i32 @nvkm_longopt(i32 %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %198)
  %200 = load %struct.nvkm_clk*, %struct.nvkm_clk** %11, align 8
  %201 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %200, i32 0, i32 6
  store i32 %199, i32* %201, align 8
  store i32 0, i32* %6, align 4
  br label %202

202:                                              ; preds = %194, %140
  %203 = load i32, i32* %6, align 4
  ret i32 %203
}

declare dso_local i32 @nvkm_subdev_ctor(i32*, %struct.nvkm_device*, i32, %struct.nvkm_subdev*) #1

declare dso_local i32 @nvbios_vpstate_parse(%struct.nvkm_bios*, %struct.nvbios_vpstate_header*) #1

declare dso_local i32 @nvbios_vpstate_entry(%struct.nvkm_bios*, %struct.nvbios_vpstate_header*, i32, %struct.nvbios_vpstate_entry*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nvkm_pstate_new(%struct.nvkm_clk*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @nvkm_notify_init(i32*, i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i8* @nvkm_stropt(i32, i8*, i32*) #1

declare dso_local i8* @nvkm_clk_nstate(%struct.nvkm_clk*, i8*, i32) #1

declare dso_local i32 @nvkm_longopt(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
