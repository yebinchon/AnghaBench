; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_transfer.c_udl_render_hline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_transfer.c_udl_render_hline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.urb = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udl_render_hline(%struct.drm_device* %0, i32 %1, %struct.urb** %2, i8* %3, i8** %4, i32 %5, i32 %6, i32 %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.urb**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.urb*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %12, align 8
  store i32 %1, i32* %13, align 4
  store %struct.urb** %2, %struct.urb*** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8** %4, i8*** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %30 = load i32, i32* %18, align 4
  %31 = load i32, i32* %13, align 4
  %32 = ashr i32 %30, %31
  %33 = mul nsw i32 %32, 2
  %34 = add nsw i32 0, %33
  store i32 %34, i32* %25, align 4
  %35 = load %struct.urb**, %struct.urb*** %14, align 8
  %36 = load %struct.urb*, %struct.urb** %35, align 8
  store %struct.urb* %36, %struct.urb** %26, align 8
  %37 = load i8**, i8*** %16, align 8
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %27, align 8
  %39 = load %struct.urb*, %struct.urb** %26, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.urb*, %struct.urb** %26, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  store i8* %46, i8** %28, align 8
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %52, label %49

49:                                               ; preds = %10
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 2
  br label %52

52:                                               ; preds = %49, %10
  %53 = phi i1 [ true, %10 ], [ %51, %49 ]
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load i8*, i8** %15, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8* %60, i8** %22, align 8
  %61 = load i8*, i8** %22, align 8
  store i8* %61, i8** %24, align 8
  %62 = load i8*, i8** %24, align 8
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8* %65, i8** %23, align 8
  br label %66

66:                                               ; preds = %115, %52
  %67 = load i8*, i8** %24, align 8
  %68 = load i8*, i8** %23, align 8
  %69 = icmp ult i8* %67, %68
  br i1 %69, label %70, label %116

70:                                               ; preds = %66
  %71 = load i8*, i8** %23, align 8
  %72 = load i8*, i8** %28, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @udl_compress_hline16(i8** %24, i8* %71, i32* %25, i8** %27, i8* %72, i32 %73)
  %75 = load i8*, i8** %27, align 8
  %76 = load i8*, i8** %28, align 8
  %77 = icmp uge i8* %75, %76
  br i1 %77, label %78, label %115

78:                                               ; preds = %70
  %79 = load i8*, i8** %27, align 8
  %80 = load %struct.urb*, %struct.urb** %26, align 8
  %81 = getelementptr inbounds %struct.urb, %struct.urb* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = ptrtoint i8* %79 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %29, align 4
  %87 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %88 = load %struct.urb*, %struct.urb** %26, align 8
  %89 = load i32, i32* %29, align 4
  %90 = call i64 @udl_submit_urb(%struct.drm_device* %87, %struct.urb* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %78
  store i32 1, i32* %11, align 4
  br label %119

93:                                               ; preds = %78
  %94 = load i32, i32* %29, align 4
  %95 = load i32*, i32** %21, align 8
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %94
  store i32 %97, i32* %95, align 4
  %98 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %99 = call %struct.urb* @udl_get_urb(%struct.drm_device* %98)
  store %struct.urb* %99, %struct.urb** %26, align 8
  %100 = load %struct.urb*, %struct.urb** %26, align 8
  %101 = icmp ne %struct.urb* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %93
  store i32 1, i32* %11, align 4
  br label %119

103:                                              ; preds = %93
  %104 = load %struct.urb*, %struct.urb** %26, align 8
  %105 = load %struct.urb**, %struct.urb*** %14, align 8
  store %struct.urb* %104, %struct.urb** %105, align 8
  %106 = load %struct.urb*, %struct.urb** %26, align 8
  %107 = getelementptr inbounds %struct.urb, %struct.urb* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %27, align 8
  %109 = load i8*, i8** %27, align 8
  %110 = load %struct.urb*, %struct.urb** %26, align 8
  %111 = getelementptr inbounds %struct.urb, %struct.urb* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %109, i64 %113
  store i8* %114, i8** %28, align 8
  br label %115

115:                                              ; preds = %103, %70
  br label %66

116:                                              ; preds = %66
  %117 = load i8*, i8** %27, align 8
  %118 = load i8**, i8*** %16, align 8
  store i8* %117, i8** %118, align 8
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %116, %102, %92
  %120 = load i32, i32* %11, align 4
  ret i32 %120
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @udl_compress_hline16(i8**, i8*, i32*, i8**, i8*, i32) #1

declare dso_local i64 @udl_submit_urb(%struct.drm_device*, %struct.urb*, i32) #1

declare dso_local %struct.urb* @udl_get_urb(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
