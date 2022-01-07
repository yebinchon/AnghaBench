; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_hgsmi_base.c_hgsmi_update_pointer_shape.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_hgsmi_base.c_hgsmi_update_pointer_shape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }
%struct.vbva_mouse_pointer_shape = type { i32, i32, i32, i32, i32, i32, i32 }

@VBOX_MOUSE_POINTER_SHAPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VBOX_MOUSE_POINTER_VISIBLE = common dso_local global i32 0, align 4
@HGSMI_CH_VBVA = common dso_local global i32 0, align 4
@VBVA_MOUSE_POINTER_SHAPE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hgsmi_update_pointer_shape(%struct.gen_pool* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.gen_pool*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.vbva_mouse_pointer_shape*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.gen_pool* %0, %struct.gen_pool** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @VBOX_MOUSE_POINTER_SHAPE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %8
  %26 = load i32, i32* %14, align 4
  %27 = add nsw i32 %26, 7
  %28 = sdiv i32 %27, 8
  %29 = load i32, i32* %15, align 4
  %30 = mul nsw i32 %28, %29
  %31 = add nsw i32 %30, 3
  %32 = and i32 %31, -4
  %33 = load i32, i32* %14, align 4
  %34 = mul nsw i32 %33, 4
  %35 = load i32, i32* %15, align 4
  %36 = mul nsw i32 %34, %35
  %37 = add nsw i32 %32, %36
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %111

44:                                               ; preds = %25
  %45 = load i32, i32* @VBOX_MOUSE_POINTER_VISIBLE, align 4
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %44, %8
  %49 = load %struct.gen_pool*, %struct.gen_pool** %10, align 8
  %50 = load i32, i32* %19, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 28, %51
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @HGSMI_CH_VBVA, align 4
  %55 = load i32, i32* @VBVA_MOUSE_POINTER_SHAPE, align 4
  %56 = call %struct.vbva_mouse_pointer_shape* @hgsmi_buffer_alloc(%struct.gen_pool* %49, i32 %53, i32 %54, i32 %55)
  store %struct.vbva_mouse_pointer_shape* %56, %struct.vbva_mouse_pointer_shape** %18, align 8
  %57 = load %struct.vbva_mouse_pointer_shape*, %struct.vbva_mouse_pointer_shape** %18, align 8
  %58 = icmp ne %struct.vbva_mouse_pointer_shape* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %48
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  br label %111

62:                                               ; preds = %48
  %63 = load %struct.vbva_mouse_pointer_shape*, %struct.vbva_mouse_pointer_shape** %18, align 8
  %64 = getelementptr inbounds %struct.vbva_mouse_pointer_shape, %struct.vbva_mouse_pointer_shape* %63, i32 0, i32 0
  store i32 128, i32* %64, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.vbva_mouse_pointer_shape*, %struct.vbva_mouse_pointer_shape** %18, align 8
  %67 = getelementptr inbounds %struct.vbva_mouse_pointer_shape, %struct.vbva_mouse_pointer_shape* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.vbva_mouse_pointer_shape*, %struct.vbva_mouse_pointer_shape** %18, align 8
  %70 = getelementptr inbounds %struct.vbva_mouse_pointer_shape, %struct.vbva_mouse_pointer_shape* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.vbva_mouse_pointer_shape*, %struct.vbva_mouse_pointer_shape** %18, align 8
  %73 = getelementptr inbounds %struct.vbva_mouse_pointer_shape, %struct.vbva_mouse_pointer_shape* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.vbva_mouse_pointer_shape*, %struct.vbva_mouse_pointer_shape** %18, align 8
  %76 = getelementptr inbounds %struct.vbva_mouse_pointer_shape, %struct.vbva_mouse_pointer_shape* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.vbva_mouse_pointer_shape*, %struct.vbva_mouse_pointer_shape** %18, align 8
  %79 = getelementptr inbounds %struct.vbva_mouse_pointer_shape, %struct.vbva_mouse_pointer_shape* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %19, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %62
  %83 = load %struct.vbva_mouse_pointer_shape*, %struct.vbva_mouse_pointer_shape** %18, align 8
  %84 = getelementptr inbounds %struct.vbva_mouse_pointer_shape, %struct.vbva_mouse_pointer_shape* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %16, align 8
  %87 = load i32, i32* %19, align 4
  %88 = call i32 @memcpy(i32 %85, i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %62
  %90 = load %struct.gen_pool*, %struct.gen_pool** %10, align 8
  %91 = load %struct.vbva_mouse_pointer_shape*, %struct.vbva_mouse_pointer_shape** %18, align 8
  %92 = call i32 @hgsmi_buffer_submit(%struct.gen_pool* %90, %struct.vbva_mouse_pointer_shape* %91)
  %93 = load %struct.vbva_mouse_pointer_shape*, %struct.vbva_mouse_pointer_shape** %18, align 8
  %94 = getelementptr inbounds %struct.vbva_mouse_pointer_shape, %struct.vbva_mouse_pointer_shape* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %103 [
    i32 128, label %96
    i32 129, label %97
    i32 130, label %100
  ]

96:                                               ; preds = %89
  store i32 0, i32* %20, align 4
  br label %106

97:                                               ; preds = %89
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %20, align 4
  br label %106

100:                                              ; preds = %89
  %101 = load i32, i32* @EBUSY, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %20, align 4
  br label %106

103:                                              ; preds = %89
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %20, align 4
  br label %106

106:                                              ; preds = %103, %100, %97, %96
  %107 = load %struct.gen_pool*, %struct.gen_pool** %10, align 8
  %108 = load %struct.vbva_mouse_pointer_shape*, %struct.vbva_mouse_pointer_shape** %18, align 8
  %109 = call i32 @hgsmi_buffer_free(%struct.gen_pool* %107, %struct.vbva_mouse_pointer_shape* %108)
  %110 = load i32, i32* %20, align 4
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %106, %59, %41
  %112 = load i32, i32* %9, align 4
  ret i32 %112
}

declare dso_local %struct.vbva_mouse_pointer_shape* @hgsmi_buffer_alloc(%struct.gen_pool*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @hgsmi_buffer_submit(%struct.gen_pool*, %struct.vbva_mouse_pointer_shape*) #1

declare dso_local i32 @hgsmi_buffer_free(%struct.gen_pool*, %struct.vbva_mouse_pointer_shape*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
