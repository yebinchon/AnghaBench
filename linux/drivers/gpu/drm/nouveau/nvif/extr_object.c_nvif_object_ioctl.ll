; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_object.c_nvif_object_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_object.c_nvif_object_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_object = type { i32, %struct.nvif_client* }
%struct.nvif_client = type { i32, %struct.nvif_object, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i8*, i32, i8**)* }
%union.anon = type { %struct.nvif_ioctl_v0 }
%struct.nvif_ioctl_v0 = type { i64, i32, i64 }

@NVIF_IOCTL_V0_OWNER_ANY = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvif_object_ioctl(%struct.nvif_object* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvif_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.nvif_client*, align 8
  %11 = alloca %union.anon*, align 8
  store %struct.nvif_object* %0, %struct.nvif_object** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %12 = load %struct.nvif_object*, %struct.nvif_object** %6, align 8
  %13 = getelementptr inbounds %struct.nvif_object, %struct.nvif_object* %12, i32 0, i32 1
  %14 = load %struct.nvif_client*, %struct.nvif_client** %13, align 8
  store %struct.nvif_client* %14, %struct.nvif_client** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %union.anon*
  store %union.anon* %16, %union.anon** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp uge i64 %18, 24
  br i1 %19, label %20, label %46

20:                                               ; preds = %4
  %21 = load %union.anon*, %union.anon** %11, align 8
  %22 = bitcast %union.anon* %21 to %struct.nvif_ioctl_v0*
  %23 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = load %struct.nvif_object*, %struct.nvif_object** %6, align 8
  %28 = load %struct.nvif_client*, %struct.nvif_client** %10, align 8
  %29 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %28, i32 0, i32 1
  %30 = icmp ne %struct.nvif_object* %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.nvif_object*, %struct.nvif_object** %6, align 8
  %33 = call i64 @nvif_handle(%struct.nvif_object* %32)
  %34 = load %union.anon*, %union.anon** %11, align 8
  %35 = bitcast %union.anon* %34 to %struct.nvif_ioctl_v0*
  %36 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %35, i32 0, i32 2
  store i64 %33, i64* %36, align 8
  br label %41

37:                                               ; preds = %26
  %38 = load %union.anon*, %union.anon** %11, align 8
  %39 = bitcast %union.anon* %38 to %struct.nvif_ioctl_v0*
  %40 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* @NVIF_IOCTL_V0_OWNER_ANY, align 4
  %43 = load %union.anon*, %union.anon** %11, align 8
  %44 = bitcast %union.anon* %43 to %struct.nvif_ioctl_v0*
  %45 = getelementptr inbounds %struct.nvif_ioctl_v0, %struct.nvif_ioctl_v0* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  br label %49

46:                                               ; preds = %20, %4
  %47 = load i32, i32* @ENOSYS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %66

49:                                               ; preds = %41
  %50 = load %struct.nvif_client*, %struct.nvif_client** %10, align 8
  %51 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (i32, i32, i8*, i32, i8**)*, i32 (i32, i32, i8*, i32, i8**)** %53, align 8
  %55 = load %struct.nvif_client*, %struct.nvif_client** %10, align 8
  %56 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.nvif_object, %struct.nvif_object* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nvif_client*, %struct.nvif_client** %10, align 8
  %60 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i8**, i8*** %9, align 8
  %65 = call i32 %54(i32 %58, i32 %61, i8* %62, i32 %63, i8** %64)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %49, %46
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @nvif_handle(%struct.nvif_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
