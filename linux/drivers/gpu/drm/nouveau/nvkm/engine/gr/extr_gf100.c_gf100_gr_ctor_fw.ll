; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_ctor_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_ctor_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.gf100_gr_fuc = type { i32*, i32 }
%struct.firmware = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_gr_ctor_fw(%struct.gf100_gr* %0, i8* %1, %struct.gf100_gr_fuc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gf100_gr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gf100_gr_fuc*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.gf100_gr_fuc* %2, %struct.gf100_gr_fuc** %7, align 8
  %10 = load %struct.gf100_gr*, %struct.gf100_gr** %5, align 8
  %11 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @nvkm_firmware_get(i32* %13, i8* %14, %struct.firmware** %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load %struct.gf100_gr*, %struct.gf100_gr** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.gf100_gr_fuc*, %struct.gf100_gr_fuc** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @gf100_gr_ctor_fw_legacy(%struct.gf100_gr* %19, i8* %20, %struct.gf100_gr_fuc* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %58

29:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %58

30:                                               ; preds = %3
  %31 = load %struct.firmware*, %struct.firmware** %8, align 8
  %32 = getelementptr inbounds %struct.firmware, %struct.firmware* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.gf100_gr_fuc*, %struct.gf100_gr_fuc** %7, align 8
  %35 = getelementptr inbounds %struct.gf100_gr_fuc, %struct.gf100_gr_fuc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.firmware*, %struct.firmware** %8, align 8
  %37 = getelementptr inbounds %struct.firmware, %struct.firmware* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.gf100_gr_fuc*, %struct.gf100_gr_fuc** %7, align 8
  %40 = getelementptr inbounds %struct.gf100_gr_fuc, %struct.gf100_gr_fuc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32* @kmemdup(i32 %38, i32 %41, i32 %42)
  %44 = load %struct.gf100_gr_fuc*, %struct.gf100_gr_fuc** %7, align 8
  %45 = getelementptr inbounds %struct.gf100_gr_fuc, %struct.gf100_gr_fuc* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  %46 = load %struct.firmware*, %struct.firmware** %8, align 8
  %47 = call i32 @nvkm_firmware_put(%struct.firmware* %46)
  %48 = load %struct.gf100_gr_fuc*, %struct.gf100_gr_fuc** %7, align 8
  %49 = getelementptr inbounds %struct.gf100_gr_fuc, %struct.gf100_gr_fuc* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %30
  br label %56

53:                                               ; preds = %30
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  br label %56

56:                                               ; preds = %53, %52
  %57 = phi i32 [ 0, %52 ], [ %55, %53 ]
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %29, %26
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @nvkm_firmware_get(i32*, i8*, %struct.firmware**) #1

declare dso_local i32 @gf100_gr_ctor_fw_legacy(%struct.gf100_gr*, i8*, %struct.gf100_gr_fuc*, i32) #1

declare dso_local i32* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @nvkm_firmware_put(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
