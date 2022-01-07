; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_gpio_ne.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_gpio_ne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.nvkm_gpio* }
%struct.nvkm_gpio = type { i32 }
%struct.dcb_gpio_func = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"GPIO_NE\09\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DCB_GPIO_UNUSED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"\09FUNC[0x%02x]\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_gpio_ne to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_gpio_ne(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca %struct.nvkm_gpio*, align 8
  %5 = alloca %struct.dcb_gpio_func, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %12 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %13 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %17, align 8
  store %struct.nvkm_bios* %18, %struct.nvkm_bios** %3, align 8
  %19 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %20 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %23, align 8
  store %struct.nvkm_gpio* %24, %struct.nvkm_gpio** %4, align 8
  %25 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %26 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %27 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  %30 = call i64 @nvbios_rd08(%struct.nvkm_bios* %25, i64 %29)
  store i64 %30, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %31 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %33 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 2
  store i64 %35, i64* %33, align 8
  %36 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %37 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %52, %1
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %42 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add nsw i64 %43, %44
  %46 = icmp slt i64 %40, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i64 @nvbios_rd08(%struct.nvkm_bios* %48, i64 %49)
  %51 = call i32 (i8*, ...) @cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %47
  %53 = load i64, i64* %11, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %11, align 8
  br label %39

55:                                               ; preds = %39
  %56 = call i32 (i8*, ...) @cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %117, %55
  %58 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %7, align 8
  %61 = trunc i64 %59 to i32
  %62 = call i64 @dcb_gpio_parse(%struct.nvkm_bios* %58, i32 0, i32 %61, i64* %8, i64* %9, %struct.dcb_gpio_func* %5)
  store i64 %62, i64* %10, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %118

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %5, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DCB_GPIO_UNUSED, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %117

69:                                               ; preds = %64
  %70 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %71 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %11, align 8
  br label %73

73:                                               ; preds = %90, %69
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %76 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = add nsw i64 %77, %78
  %80 = icmp slt i64 %74, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %5, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i64 @nvbios_rd08(%struct.nvkm_bios* %84, i64 %85)
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %93

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %11, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %11, align 8
  br label %73

93:                                               ; preds = %88, %73
  %94 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %5, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %95)
  %97 = load i64, i64* %11, align 8
  %98 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %99 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = add nsw i64 %100, %101
  %103 = icmp eq i64 %97, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %93
  %105 = call i32 (i8*, ...) @cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %106 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %107 = call i64 @init_exec(%struct.nvbios_init* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %4, align 8
  %111 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %5, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @nvkm_gpio_reset(%struct.nvkm_gpio* %110, i64 %112)
  br label %114

114:                                              ; preds = %109, %104
  br label %115

115:                                              ; preds = %114, %93
  %116 = call i32 (i8*, ...) @cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %64
  br label %57

118:                                              ; preds = %57
  %119 = load i64, i64* %6, align 8
  %120 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %121 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %119
  store i64 %123, i64* %121, align 8
  ret void
}

declare dso_local i64 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @cont(i8*, ...) #1

declare dso_local i64 @dcb_gpio_parse(%struct.nvkm_bios*, i32, i32, i64*, i64*, %struct.dcb_gpio_func*) #1

declare dso_local i64 @init_exec(%struct.nvbios_init*) #1

declare dso_local i32 @nvkm_gpio_reset(%struct.nvkm_gpio*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
