; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gk20a.c_gk20a_gr_aiv_to_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gk20a.c_gk20a_gr_aiv_to_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i32 }
%struct.gf100_gr_pack = type { %struct.gf100_gr_init* }
%struct.gf100_gr_init = type { i32, i32, i32, i32 }
%struct.gf100_gr_fuc = type { i32, i64 }
%struct.gk20a_fw_aiv = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk20a_gr_aiv_to_init(%struct.gf100_gr* %0, i8* %1, %struct.gf100_gr_pack** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gf100_gr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gf100_gr_pack**, align 8
  %8 = alloca %struct.gf100_gr_fuc, align 8
  %9 = alloca %struct.gf100_gr_init*, align 8
  %10 = alloca %struct.gf100_gr_pack*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gf100_gr_init*, align 8
  %15 = alloca %struct.gk20a_fw_aiv*, align 8
  store %struct.gf100_gr* %0, %struct.gf100_gr** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.gf100_gr_pack** %2, %struct.gf100_gr_pack*** %7, align 8
  %16 = load %struct.gf100_gr*, %struct.gf100_gr** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @gf100_gr_ctor_fw(%struct.gf100_gr* %16, i8* %17, %struct.gf100_gr_fuc* %8)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %4, align 4
  br label %88

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.gf100_gr_fuc, %struct.gf100_gr_fuc* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 16, %31
  %33 = add i64 16, %32
  %34 = trunc i64 %33 to i32
  %35 = call %struct.gf100_gr_pack* @vzalloc(i32 %34)
  store %struct.gf100_gr_pack* %35, %struct.gf100_gr_pack** %10, align 8
  %36 = load %struct.gf100_gr_pack*, %struct.gf100_gr_pack** %10, align 8
  %37 = icmp ne %struct.gf100_gr_pack* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %23
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  br label %85

41:                                               ; preds = %23
  %42 = load %struct.gf100_gr_pack*, %struct.gf100_gr_pack** %10, align 8
  %43 = getelementptr inbounds %struct.gf100_gr_pack, %struct.gf100_gr_pack* %42, i64 2
  %44 = bitcast %struct.gf100_gr_pack* %43 to i8*
  %45 = bitcast i8* %44 to %struct.gf100_gr_init*
  store %struct.gf100_gr_init* %45, %struct.gf100_gr_init** %9, align 8
  %46 = load %struct.gf100_gr_init*, %struct.gf100_gr_init** %9, align 8
  %47 = load %struct.gf100_gr_pack*, %struct.gf100_gr_pack** %10, align 8
  %48 = getelementptr inbounds %struct.gf100_gr_pack, %struct.gf100_gr_pack* %47, i64 0
  %49 = getelementptr inbounds %struct.gf100_gr_pack, %struct.gf100_gr_pack* %48, i32 0, i32 0
  store %struct.gf100_gr_init* %46, %struct.gf100_gr_init** %49, align 8
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %79, %41
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %82

54:                                               ; preds = %50
  %55 = load %struct.gf100_gr_init*, %struct.gf100_gr_init** %9, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.gf100_gr_init, %struct.gf100_gr_init* %55, i64 %57
  store %struct.gf100_gr_init* %58, %struct.gf100_gr_init** %14, align 8
  %59 = getelementptr inbounds %struct.gf100_gr_fuc, %struct.gf100_gr_fuc* %8, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.gk20a_fw_aiv*
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.gk20a_fw_aiv, %struct.gk20a_fw_aiv* %61, i64 %63
  store %struct.gk20a_fw_aiv* %64, %struct.gk20a_fw_aiv** %15, align 8
  %65 = load %struct.gk20a_fw_aiv*, %struct.gk20a_fw_aiv** %15, align 8
  %66 = getelementptr inbounds %struct.gk20a_fw_aiv, %struct.gk20a_fw_aiv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.gf100_gr_init*, %struct.gf100_gr_init** %14, align 8
  %69 = getelementptr inbounds %struct.gf100_gr_init, %struct.gf100_gr_init* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.gk20a_fw_aiv*, %struct.gk20a_fw_aiv** %15, align 8
  %71 = getelementptr inbounds %struct.gk20a_fw_aiv, %struct.gk20a_fw_aiv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.gf100_gr_init*, %struct.gf100_gr_init** %14, align 8
  %74 = getelementptr inbounds %struct.gf100_gr_init, %struct.gf100_gr_init* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.gf100_gr_init*, %struct.gf100_gr_init** %14, align 8
  %76 = getelementptr inbounds %struct.gf100_gr_init, %struct.gf100_gr_init* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  %77 = load %struct.gf100_gr_init*, %struct.gf100_gr_init** %14, align 8
  %78 = getelementptr inbounds %struct.gf100_gr_init, %struct.gf100_gr_init* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %54
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %50

82:                                               ; preds = %50
  %83 = load %struct.gf100_gr_pack*, %struct.gf100_gr_pack** %10, align 8
  %84 = load %struct.gf100_gr_pack**, %struct.gf100_gr_pack*** %7, align 8
  store %struct.gf100_gr_pack* %83, %struct.gf100_gr_pack** %84, align 8
  br label %85

85:                                               ; preds = %82, %38
  %86 = call i32 @gf100_gr_dtor_fw(%struct.gf100_gr_fuc* %8)
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %85, %21
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @gf100_gr_ctor_fw(%struct.gf100_gr*, i8*, %struct.gf100_gr_fuc*) #1

declare dso_local %struct.gf100_gr_pack* @vzalloc(i32) #1

declare dso_local i32 @gf100_gr_dtor_fw(%struct.gf100_gr_fuc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
