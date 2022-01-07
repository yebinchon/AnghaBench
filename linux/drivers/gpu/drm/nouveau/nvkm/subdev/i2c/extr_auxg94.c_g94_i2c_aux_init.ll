; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_auxg94.c_g94_i2c_aux_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_auxg94.c_g94_i2c_aux_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g94_i2c_aux = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"begin idle timeout %08x\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"magic wait %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g94_i2c_aux*)* @g94_i2c_aux_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g94_i2c_aux_init(%struct.g94_i2c_aux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g94_i2c_aux*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.g94_i2c_aux* %0, %struct.g94_i2c_aux** %3, align 8
  %10 = load %struct.g94_i2c_aux*, %struct.g94_i2c_aux** %3, align 8
  %11 = getelementptr inbounds %struct.g94_i2c_aux, %struct.g94_i2c_aux* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 1048576, i32* %6, align 4
  store i32 16777216, i32* %7, align 4
  store i32 1000, i32* %9, align 4
  br label %19

19:                                               ; preds = %39, %1
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %21 = load %struct.g94_i2c_aux*, %struct.g94_i2c_aux** %3, align 8
  %22 = getelementptr inbounds %struct.g94_i2c_aux, %struct.g94_i2c_aux* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %23, 80
  %25 = add nsw i32 58596, %24
  %26 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = call i32 @udelay(i32 1)
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %9, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %19
  %32 = load %struct.g94_i2c_aux*, %struct.g94_i2c_aux** %3, align 8
  %33 = getelementptr inbounds %struct.g94_i2c_aux, %struct.g94_i2c_aux* %32, i32 0, i32 1
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @AUX_ERR(%struct.TYPE_8__* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %78

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 50397184
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %19, label %43

43:                                               ; preds = %39
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %45 = load %struct.g94_i2c_aux*, %struct.g94_i2c_aux** %3, align 8
  %46 = getelementptr inbounds %struct.g94_i2c_aux, %struct.g94_i2c_aux* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %47, 80
  %49 = add nsw i32 58596, %48
  %50 = call i32 @nvkm_mask(%struct.nvkm_device* %44, i32 %49, i32 3145728, i32 1048576)
  store i32 1000, i32* %9, align 4
  br label %51

51:                                               ; preds = %73, %43
  %52 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %53 = load %struct.g94_i2c_aux*, %struct.g94_i2c_aux** %3, align 8
  %54 = getelementptr inbounds %struct.g94_i2c_aux, %struct.g94_i2c_aux* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %55, 80
  %57 = add nsw i32 58596, %56
  %58 = call i32 @nvkm_rd32(%struct.nvkm_device* %52, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = call i32 @udelay(i32 1)
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %9, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %51
  %64 = load %struct.g94_i2c_aux*, %struct.g94_i2c_aux** %3, align 8
  %65 = getelementptr inbounds %struct.g94_i2c_aux, %struct.g94_i2c_aux* %64, i32 0, i32 1
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @AUX_ERR(%struct.TYPE_8__* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.g94_i2c_aux*, %struct.g94_i2c_aux** %3, align 8
  %69 = call i32 @g94_i2c_aux_fini(%struct.g94_i2c_aux* %68)
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %78

72:                                               ; preds = %51
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, 50331648
  %76 = icmp ne i32 %75, 16777216
  br i1 %76, label %51, label %77

77:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %63, %31
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @AUX_ERR(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @g94_i2c_aux_fini(%struct.g94_i2c_aux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
