; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_chan_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_chan_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_device = type { i32 }
%struct.nvif_object = type { i32 }
%struct.nv50_chan = type { i32, %struct.nvif_device* }
%struct.nvif_sclass = type { i64 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvif_device*, %struct.nvif_object*, i64*, i32, i8*, i32, %struct.nv50_chan*)* @nv50_chan_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_chan_create(%struct.nvif_device* %0, %struct.nvif_object* %1, i64* %2, i32 %3, i8* %4, i32 %5, %struct.nv50_chan* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvif_device*, align 8
  %10 = alloca %struct.nvif_object*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nv50_chan*, align 8
  %16 = alloca %struct.nvif_sclass*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nvif_device* %0, %struct.nvif_device** %9, align 8
  store %struct.nvif_object* %1, %struct.nvif_object** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.nv50_chan* %6, %struct.nv50_chan** %15, align 8
  %20 = load %struct.nvif_device*, %struct.nvif_device** %9, align 8
  %21 = load %struct.nv50_chan*, %struct.nv50_chan** %15, align 8
  %22 = getelementptr inbounds %struct.nv50_chan, %struct.nv50_chan* %21, i32 0, i32 1
  store %struct.nvif_device* %20, %struct.nvif_device** %22, align 8
  %23 = load %struct.nvif_object*, %struct.nvif_object** %10, align 8
  %24 = call i32 @nvif_object_sclass_get(%struct.nvif_object* %23, %struct.nvif_sclass** %16)
  store i32 %24, i32* %19, align 4
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i32, i32* %17, align 4
  store i32 %28, i32* %8, align 4
  br label %81

29:                                               ; preds = %7
  br label %30

30:                                               ; preds = %74, %29
  %31 = load i64*, i64** %11, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %30
  store i32 0, i32* %18, align 4
  br label %36

36:                                               ; preds = %71, %35
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* %19, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %36
  %41 = load %struct.nvif_sclass*, %struct.nvif_sclass** %16, align 8
  %42 = load i32, i32* %18, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.nvif_sclass, %struct.nvif_sclass* %41, i64 %43
  %45 = getelementptr inbounds %struct.nvif_sclass, %struct.nvif_sclass* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %11, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %40
  %52 = load %struct.nvif_object*, %struct.nvif_object** %10, align 8
  %53 = load i64*, i64** %11, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.nv50_chan*, %struct.nv50_chan** %15, align 8
  %59 = getelementptr inbounds %struct.nv50_chan, %struct.nv50_chan* %58, i32 0, i32 0
  %60 = call i32 @nvif_object_init(%struct.nvif_object* %52, i32 0, i64 %55, i8* %56, i32 %57, i32* %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = load %struct.nv50_chan*, %struct.nv50_chan** %15, align 8
  %65 = getelementptr inbounds %struct.nv50_chan, %struct.nv50_chan* %64, i32 0, i32 0
  %66 = call i32 @nvif_object_map(i32* %65, i32* null, i32 0)
  br label %67

67:                                               ; preds = %63, %51
  %68 = call i32 @nvif_object_sclass_put(%struct.nvif_sclass** %16)
  %69 = load i32, i32* %17, align 4
  store i32 %69, i32* %8, align 4
  br label %81

70:                                               ; preds = %40
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %18, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %18, align 4
  br label %36

74:                                               ; preds = %36
  %75 = load i64*, i64** %11, align 8
  %76 = getelementptr inbounds i64, i64* %75, i32 1
  store i64* %76, i64** %11, align 8
  br label %30

77:                                               ; preds = %30
  %78 = call i32 @nvif_object_sclass_put(%struct.nvif_sclass** %16)
  %79 = load i32, i32* @ENOSYS, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %77, %67, %27
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local i32 @nvif_object_sclass_get(%struct.nvif_object*, %struct.nvif_sclass**) #1

declare dso_local i32 @nvif_object_init(%struct.nvif_object*, i32, i64, i8*, i32, i32*) #1

declare dso_local i32 @nvif_object_map(i32*, i32*, i32) #1

declare dso_local i32 @nvif_object_sclass_put(%struct.nvif_sclass**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
