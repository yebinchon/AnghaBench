; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_iccsense.c_nvbios_iccsense_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_iccsense.c_nvbios_iccsense_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }
%struct.nvbios_iccsense = type { i32, %struct.pwr_rail_t* }
%struct.pwr_rail_t = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nvbios_extdev_func = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ICCSENSE version 0x%02x unknown\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_iccsense_parse(%struct.nvkm_bios* %0, %struct.nvbios_iccsense* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_bios*, align 8
  %5 = alloca %struct.nvbios_iccsense*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nvbios_extdev_func, align 4
  %15 = alloca %struct.pwr_rail_t*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %4, align 8
  store %struct.nvbios_iccsense* %1, %struct.nvbios_iccsense** %5, align 8
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %19 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %18, i32 0, i32 0
  store %struct.nvkm_subdev* %19, %struct.nvkm_subdev** %6, align 8
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %21 = call i32 @nvbios_iccsense_table(%struct.nvkm_bios* %20, i32* %7, i32* %8, i32* %9, i32* %10)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %193

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 16
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 32
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @nvkm_error(%struct.nvkm_subdev* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %193

42:                                               ; preds = %33, %30
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.nvbios_iccsense*, %struct.nvbios_iccsense** %5, align 8
  %45 = getelementptr inbounds %struct.nvbios_iccsense, %struct.nvbios_iccsense* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.pwr_rail_t* @kmalloc_array(i32 %46, i32 24, i32 %47)
  %49 = load %struct.nvbios_iccsense*, %struct.nvbios_iccsense** %5, align 8
  %50 = getelementptr inbounds %struct.nvbios_iccsense, %struct.nvbios_iccsense* %49, i32 0, i32 1
  store %struct.pwr_rail_t* %48, %struct.pwr_rail_t** %50, align 8
  %51 = load %struct.nvbios_iccsense*, %struct.nvbios_iccsense** %5, align 8
  %52 = getelementptr inbounds %struct.nvbios_iccsense, %struct.nvbios_iccsense* %51, i32 0, i32 1
  %53 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %52, align 8
  %54 = icmp ne %struct.pwr_rail_t* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %42
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %193

58:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %189, %58
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %192

63:                                               ; preds = %59
  %64 = load %struct.nvbios_iccsense*, %struct.nvbios_iccsense** %5, align 8
  %65 = getelementptr inbounds %struct.nvbios_iccsense, %struct.nvbios_iccsense* %64, i32 0, i32 1
  %66 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %66, i64 %68
  store %struct.pwr_rail_t* %69, %struct.pwr_rail_t** %15, align 8
  store i32 0, i32* %16, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = mul nsw i32 %73, %74
  %76 = add nsw i32 %72, %75
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %7, align 4
  switch i32 %77, label %110 [
    i32 16, label %78
    i32 32, label %98
  ]

78:                                               ; preds = %63
  %79 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  %82 = call i32 @nvbios_rd08(%struct.nvkm_bios* %79, i32 %81)
  %83 = and i32 %82, 248
  %84 = icmp eq i32 %83, 248
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %15, align 8
  %87 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %91

88:                                               ; preds = %78
  %89 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %15, align 8
  %90 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 2
  %95 = call i32 @nvbios_rd08(%struct.nvkm_bios* %92, i32 %94)
  %96 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %15, align 8
  %97 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  store i32 3, i32* %16, align 4
  br label %110

98:                                               ; preds = %63
  %99 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @nvbios_rd08(%struct.nvkm_bios* %99, i32 %100)
  %102 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %15, align 8
  %103 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  %107 = call i32 @nvbios_rd08(%struct.nvkm_bios* %104, i32 %106)
  %108 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %15, align 8
  %109 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  store i32 5, i32* %16, align 4
  br label %110

110:                                              ; preds = %63, %98, %91
  %111 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %112 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %15, align 8
  %113 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @nvbios_extdev_parse(%struct.nvkm_bios* %111, i32 %114, %struct.nvbios_extdev_func* %14)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %189

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.nvbios_extdev_func, %struct.nvbios_extdev_func* %14, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %127 [
    i32 130, label %121
    i32 129, label %121
    i32 128, label %124
  ]

121:                                              ; preds = %118, %118
  %122 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %15, align 8
  %123 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %122, i32 0, i32 2
  store i32 1, i32* %123, align 8
  br label %130

124:                                              ; preds = %118
  %125 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %15, align 8
  %126 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %125, i32 0, i32 2
  store i32 3, i32* %126, align 8
  br label %130

127:                                              ; preds = %118
  %128 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %15, align 8
  %129 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %128, i32 0, i32 2
  store i32 0, i32* %129, align 8
  br label %130

130:                                              ; preds = %127, %124, %121
  store i32 0, i32* %17, align 4
  br label %131

131:                                              ; preds = %173, %130
  %132 = load i32, i32* %17, align 4
  %133 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %15, align 8
  %134 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %176

137:                                              ; preds = %131
  %138 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %16, align 4
  %141 = add nsw i32 %139, %140
  %142 = load i32, i32* %17, align 4
  %143 = mul nsw i32 %142, 2
  %144 = add nsw i32 %141, %143
  %145 = call i32 @nvbios_rd08(%struct.nvkm_bios* %138, i32 %144)
  %146 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %15, align 8
  %147 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %146, i32 0, i32 4
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* %17, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  store i32 %145, i32* %152, align 4
  %153 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %16, align 4
  %156 = add nsw i32 %154, %155
  %157 = load i32, i32* %17, align 4
  %158 = mul nsw i32 %157, 2
  %159 = add nsw i32 %156, %158
  %160 = add nsw i32 %159, 1
  %161 = call i32 @nvbios_rd08(%struct.nvkm_bios* %153, i32 %160)
  %162 = and i32 %161, 64
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %15, align 8
  %167 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %166, i32 0, i32 4
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = load i32, i32* %17, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  store i32 %165, i32* %172, align 4
  br label %173

173:                                              ; preds = %137
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %17, align 4
  br label %131

176:                                              ; preds = %131
  %177 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %178, %179
  %181 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %15, align 8
  %182 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = mul nsw i32 %183, 2
  %185 = add nsw i32 %180, %184
  %186 = call i32 @nvbios_rd16(%struct.nvkm_bios* %177, i32 %185)
  %187 = load %struct.pwr_rail_t*, %struct.pwr_rail_t** %15, align 8
  %188 = getelementptr inbounds %struct.pwr_rail_t, %struct.pwr_rail_t* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %176, %117
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %11, align 4
  br label %59

192:                                              ; preds = %59
  store i32 0, i32* %3, align 4
  br label %193

193:                                              ; preds = %192, %55, %36, %27
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @nvbios_iccsense_table(%struct.nvkm_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local %struct.pwr_rail_t* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

declare dso_local i64 @nvbios_extdev_parse(%struct.nvkm_bios*, i32, %struct.nvbios_extdev_func*) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
