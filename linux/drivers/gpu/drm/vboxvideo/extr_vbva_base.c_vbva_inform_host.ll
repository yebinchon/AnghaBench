; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbva_base.c_vbva_inform_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbva_base.c_vbva_inform_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbva_buf_ctx = type { i32 }
%struct.gen_pool = type { i32 }
%struct.vbva_enable_ex = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i64, i32 }

@HGSMI_CH_VBVA = common dso_local global i32 0, align 4
@VBVA_ENABLE = common dso_local global i32 0, align 4
@VBVA_F_ENABLE = common dso_local global i32 0, align 4
@VBVA_F_DISABLE = common dso_local global i32 0, align 4
@VERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@VBVA_F_EXTENDED = common dso_local global i32 0, align 4
@VBVA_F_ABSOFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbva_buf_ctx*, %struct.gen_pool*, i64, i32)* @vbva_inform_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbva_inform_host(%struct.vbva_buf_ctx* %0, %struct.gen_pool* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vbva_buf_ctx*, align 8
  %7 = alloca %struct.gen_pool*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vbva_enable_ex*, align 8
  %11 = alloca i32, align 4
  store %struct.vbva_buf_ctx* %0, %struct.vbva_buf_ctx** %6, align 8
  store %struct.gen_pool* %1, %struct.gen_pool** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %13 = load i32, i32* @HGSMI_CH_VBVA, align 4
  %14 = load i32, i32* @VBVA_ENABLE, align 4
  %15 = call %struct.vbva_enable_ex* @hgsmi_buffer_alloc(%struct.gen_pool* %12, i32 32, i32 %13, i32 %14)
  store %struct.vbva_enable_ex* %15, %struct.vbva_enable_ex** %10, align 8
  %16 = load %struct.vbva_enable_ex*, %struct.vbva_enable_ex** %10, align 8
  %17 = icmp ne %struct.vbva_enable_ex* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %74

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @VBVA_F_ENABLE, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @VBVA_F_DISABLE, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = load %struct.vbva_enable_ex*, %struct.vbva_enable_ex** %10, align 8
  %29 = getelementptr inbounds %struct.vbva_enable_ex, %struct.vbva_enable_ex* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.vbva_buf_ctx*, %struct.vbva_buf_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.vbva_buf_ctx, %struct.vbva_buf_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vbva_enable_ex*, %struct.vbva_enable_ex** %10, align 8
  %35 = getelementptr inbounds %struct.vbva_enable_ex, %struct.vbva_enable_ex* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load i64, i64* @VERR_NOT_SUPPORTED, align 8
  %38 = load %struct.vbva_enable_ex*, %struct.vbva_enable_ex** %10, align 8
  %39 = getelementptr inbounds %struct.vbva_enable_ex, %struct.vbva_enable_ex* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i64 %37, i64* %40, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %26
  %44 = load i32, i32* @VBVA_F_EXTENDED, align 4
  %45 = load i32, i32* @VBVA_F_ABSOFFSET, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.vbva_enable_ex*, %struct.vbva_enable_ex** %10, align 8
  %48 = getelementptr inbounds %struct.vbva_enable_ex, %struct.vbva_enable_ex* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.vbva_enable_ex*, %struct.vbva_enable_ex** %10, align 8
  %54 = getelementptr inbounds %struct.vbva_enable_ex, %struct.vbva_enable_ex* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %43, %26
  %56 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %57 = load %struct.vbva_enable_ex*, %struct.vbva_enable_ex** %10, align 8
  %58 = call i32 @hgsmi_buffer_submit(%struct.gen_pool* %56, %struct.vbva_enable_ex* %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.vbva_enable_ex*, %struct.vbva_enable_ex** %10, align 8
  %63 = getelementptr inbounds %struct.vbva_enable_ex, %struct.vbva_enable_ex* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %65, 0
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %11, align 4
  br label %69

68:                                               ; preds = %55
  store i32 1, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %61
  %70 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %71 = load %struct.vbva_enable_ex*, %struct.vbva_enable_ex** %10, align 8
  %72 = call i32 @hgsmi_buffer_free(%struct.gen_pool* %70, %struct.vbva_enable_ex* %71)
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %18
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.vbva_enable_ex* @hgsmi_buffer_alloc(%struct.gen_pool*, i32, i32, i32) #1

declare dso_local i32 @hgsmi_buffer_submit(%struct.gen_pool*, %struct.vbva_enable_ex*) #1

declare dso_local i32 @hgsmi_buffer_free(%struct.gen_pool*, %struct.vbva_enable_ex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
