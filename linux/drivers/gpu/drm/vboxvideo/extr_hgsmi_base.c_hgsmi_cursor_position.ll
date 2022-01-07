; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_hgsmi_base.c_hgsmi_cursor_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_hgsmi_base.c_hgsmi_cursor_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }
%struct.vbva_cursor_position = type { i32, i8*, i8* }

@HGSMI_CH_VBVA = common dso_local global i32 0, align 4
@VBVA_CURSOR_POSITION = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hgsmi_cursor_position(%struct.gen_pool* %0, i32 %1, i8* %2, i8* %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gen_pool*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.vbva_cursor_position*, align 8
  store %struct.gen_pool* %0, %struct.gen_pool** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %15 = load %struct.gen_pool*, %struct.gen_pool** %8, align 8
  %16 = load i32, i32* @HGSMI_CH_VBVA, align 4
  %17 = load i32, i32* @VBVA_CURSOR_POSITION, align 4
  %18 = call %struct.vbva_cursor_position* @hgsmi_buffer_alloc(%struct.gen_pool* %15, i32 24, i32 %16, i32 %17)
  store %struct.vbva_cursor_position* %18, %struct.vbva_cursor_position** %14, align 8
  %19 = load %struct.vbva_cursor_position*, %struct.vbva_cursor_position** %14, align 8
  %20 = icmp ne %struct.vbva_cursor_position* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %48

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.vbva_cursor_position*, %struct.vbva_cursor_position** %14, align 8
  %27 = getelementptr inbounds %struct.vbva_cursor_position, %struct.vbva_cursor_position* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.vbva_cursor_position*, %struct.vbva_cursor_position** %14, align 8
  %30 = getelementptr inbounds %struct.vbva_cursor_position, %struct.vbva_cursor_position* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load %struct.vbva_cursor_position*, %struct.vbva_cursor_position** %14, align 8
  %33 = getelementptr inbounds %struct.vbva_cursor_position, %struct.vbva_cursor_position* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.gen_pool*, %struct.gen_pool** %8, align 8
  %35 = load %struct.vbva_cursor_position*, %struct.vbva_cursor_position** %14, align 8
  %36 = call i32 @hgsmi_buffer_submit(%struct.gen_pool* %34, %struct.vbva_cursor_position* %35)
  %37 = load %struct.vbva_cursor_position*, %struct.vbva_cursor_position** %14, align 8
  %38 = getelementptr inbounds %struct.vbva_cursor_position, %struct.vbva_cursor_position* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** %12, align 8
  store i8* %39, i8** %40, align 8
  %41 = load %struct.vbva_cursor_position*, %struct.vbva_cursor_position** %14, align 8
  %42 = getelementptr inbounds %struct.vbva_cursor_position, %struct.vbva_cursor_position* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** %13, align 8
  store i8* %43, i8** %44, align 8
  %45 = load %struct.gen_pool*, %struct.gen_pool** %8, align 8
  %46 = load %struct.vbva_cursor_position*, %struct.vbva_cursor_position** %14, align 8
  %47 = call i32 @hgsmi_buffer_free(%struct.gen_pool* %45, %struct.vbva_cursor_position* %46)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %24, %21
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local %struct.vbva_cursor_position* @hgsmi_buffer_alloc(%struct.gen_pool*, i32, i32, i32) #1

declare dso_local i32 @hgsmi_buffer_submit(%struct.gen_pool*, %struct.vbva_cursor_position*) #1

declare dso_local i32 @hgsmi_buffer_free(%struct.gen_pool*, %struct.vbva_cursor_position*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
