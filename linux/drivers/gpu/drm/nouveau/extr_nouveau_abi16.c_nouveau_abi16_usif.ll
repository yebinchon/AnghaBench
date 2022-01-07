; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_abi16.c_nouveau_abi16_usif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_abi16.c_nouveau_abi16_usif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%union.anon = type { %struct.nvif_ioctl_v0 }
%struct.nvif_ioctl_v0 = type { i32, i64, i8*, i8* }
%struct.nouveau_abi16_chan = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nouveau_abi16 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NVIF_IOCTL_V0_OWNER_ANY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_abi16_usif(%struct.drm_file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.anon*, align 8
  %9 = alloca %struct.nouveau_abi16_chan*, align 8
  %10 = alloca %struct.nouveau_abi16*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %union.anon*
  store %union.anon* %13, %union.anon** %8, align 8
  %14 = load i32, i32* @ENOSYS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load %union.anon*, %union.anon** %8, align 8
  %18 = bitcast %union.anon* %17 to %struct.nvif_ioctl_v0*
  %19 = call i32 @nvif_unpack(i32 %16, i8** %6, i32* %7, %struct.nvif_ioctl_v0* byval(%struct.nvif_ioctl_v0) align 8 %18, i32 0, i32 0, i32 1)
  store i32 %19, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %3
  %22 = load %union.anon*, %union.anon** %8, align 8
  %23 = bitcast %union.anon* %22 to %struct.nvif_ioctl_v0*
  %24 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %27 [
    i32 129, label %26
    i32 130, label %26
    i32 128, label %26
  ]

26:                                               ; preds = %21, %21, %21
  br label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EACCES, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %82

30:                                               ; preds = %26
  br label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %82

33:                                               ; preds = %30
  %34 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %35 = call %struct.nouveau_abi16* @nouveau_abi16(%struct.drm_file* %34)
  store %struct.nouveau_abi16* %35, %struct.nouveau_abi16** %10, align 8
  %36 = icmp ne %struct.nouveau_abi16* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %82

40:                                               ; preds = %33
  %41 = load %union.anon*, %union.anon** %8, align 8
  %42 = bitcast %union.anon* %41 to %struct.nvif_ioctl_v0*
  %43 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, -1
  br i1 %45, label %46, label %70

46:                                               ; preds = %40
  %47 = load %struct.nouveau_abi16*, %struct.nouveau_abi16** %10, align 8
  %48 = load %union.anon*, %union.anon** %8, align 8
  %49 = bitcast %union.anon* %48 to %struct.nvif_ioctl_v0*
  %50 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call %struct.nouveau_abi16_chan* @nouveau_abi16_chan(%struct.nouveau_abi16* %47, i64 %51)
  store %struct.nouveau_abi16_chan* %52, %struct.nouveau_abi16_chan** %9, align 8
  %53 = icmp ne %struct.nouveau_abi16_chan* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %82

57:                                               ; preds = %46
  %58 = load %struct.nouveau_abi16_chan*, %struct.nouveau_abi16_chan** %9, align 8
  %59 = getelementptr inbounds %struct.nouveau_abi16_chan, %struct.nouveau_abi16_chan* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i8* @nvif_handle(i32* %61)
  %63 = load %union.anon*, %union.anon** %8, align 8
  %64 = bitcast %union.anon* %63 to %struct.nvif_ioctl_v0*
  %65 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %64, i32 0, i32 3
  store i8* %62, i8** %65, align 8
  %66 = load i8*, i8** @NVIF_IOCTL_V0_OWNER_ANY, align 8
  %67 = load %union.anon*, %union.anon** %8, align 8
  %68 = bitcast %union.anon* %67 to %struct.nvif_ioctl_v0*
  %69 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %68, i32 0, i32 2
  store i8* %66, i8** %69, align 8
  store i32 0, i32* %4, align 4
  br label %82

70:                                               ; preds = %40
  %71 = load %struct.nouveau_abi16*, %struct.nouveau_abi16** %10, align 8
  %72 = getelementptr inbounds %struct.nouveau_abi16, %struct.nouveau_abi16* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i8* @nvif_handle(i32* %73)
  %75 = load %union.anon*, %union.anon** %8, align 8
  %76 = bitcast %union.anon* %75 to %struct.nvif_ioctl_v0*
  %77 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %76, i32 0, i32 3
  store i8* %74, i8** %77, align 8
  %78 = load i8*, i8** @NVIF_IOCTL_V0_OWNER_ANY, align 8
  %79 = load %union.anon*, %union.anon** %8, align 8
  %80 = bitcast %union.anon* %79 to %struct.nvif_ioctl_v0*
  %81 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %80, i32 0, i32 2
  store i8* %78, i8** %81, align 8
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %70, %57, %54, %37, %31, %27
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, %struct.nvif_ioctl_v0* byval(%struct.nvif_ioctl_v0) align 8, i32, i32, i32) #1

declare dso_local %struct.nouveau_abi16* @nouveau_abi16(%struct.drm_file*) #1

declare dso_local %struct.nouveau_abi16_chan* @nouveau_abi16_chan(%struct.nouveau_abi16*, i64) #1

declare dso_local i8* @nvif_handle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
