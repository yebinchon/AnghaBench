; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_overlay.c_vmw_overlay_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { %struct.vmw_overlay* }
%struct.vmw_overlay = type { %struct.vmw_stream* }
%struct.vmw_stream = type { i32, i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, i64, i32, i32)* @vmw_overlay_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_overlay_stop(%struct.vmw_private* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vmw_overlay*, align 8
  %11 = alloca %struct.vmw_stream*, align 8
  %12 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %14 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %13, i32 0, i32 0
  %15 = load %struct.vmw_overlay*, %struct.vmw_overlay** %14, align 8
  store %struct.vmw_overlay* %15, %struct.vmw_overlay** %10, align 8
  %16 = load %struct.vmw_overlay*, %struct.vmw_overlay** %10, align 8
  %17 = getelementptr inbounds %struct.vmw_overlay, %struct.vmw_overlay* %16, i32 0, i32 0
  %18 = load %struct.vmw_stream*, %struct.vmw_stream** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.vmw_stream, %struct.vmw_stream* %18, i64 %19
  store %struct.vmw_stream* %20, %struct.vmw_stream** %11, align 8
  %21 = load %struct.vmw_stream*, %struct.vmw_stream** %11, align 8
  %22 = getelementptr inbounds %struct.vmw_stream, %struct.vmw_stream* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %75

26:                                               ; preds = %4
  %27 = load %struct.vmw_stream*, %struct.vmw_stream** %11, align 8
  %28 = getelementptr inbounds %struct.vmw_stream, %struct.vmw_stream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %62, label %31

31:                                               ; preds = %26
  %32 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @vmw_overlay_send_stop(%struct.vmw_private* %32, i64 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %75

40:                                               ; preds = %31
  %41 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %42 = load %struct.vmw_stream*, %struct.vmw_stream** %11, align 8
  %43 = getelementptr inbounds %struct.vmw_stream, %struct.vmw_stream* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @vmw_overlay_move_buffer(%struct.vmw_private* %41, i32 %44, i32 0, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %40
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @ERESTARTSYS, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %5, align 4
  br label %75

56:                                               ; preds = %49, %40
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  br label %61

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %26
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load %struct.vmw_stream*, %struct.vmw_stream** %11, align 8
  %67 = getelementptr inbounds %struct.vmw_stream, %struct.vmw_stream* %66, i32 0, i32 1
  %68 = call i32 @vmw_bo_unreference(i32* %67)
  %69 = load %struct.vmw_stream*, %struct.vmw_stream** %11, align 8
  %70 = getelementptr inbounds %struct.vmw_stream, %struct.vmw_stream* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  br label %74

71:                                               ; preds = %62
  %72 = load %struct.vmw_stream*, %struct.vmw_stream** %11, align 8
  %73 = getelementptr inbounds %struct.vmw_stream, %struct.vmw_stream* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %65
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %54, %38, %25
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @vmw_overlay_send_stop(%struct.vmw_private*, i64, i32) #1

declare dso_local i32 @vmw_overlay_move_buffer(%struct.vmw_private*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vmw_bo_unreference(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
