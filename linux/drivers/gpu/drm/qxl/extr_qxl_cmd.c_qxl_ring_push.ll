; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_ring_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_cmd.c_qxl_ring_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_ring = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32*, %struct.qxl_ring_header }
%struct.qxl_ring_header = type { i32, i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_ring_push(%struct.qxl_ring* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qxl_ring*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qxl_ring_header*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.qxl_ring* %0, %struct.qxl_ring** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.qxl_ring*, %struct.qxl_ring** %5, align 8
  %14 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store %struct.qxl_ring_header* %16, %struct.qxl_ring_header** %8, align 8
  %17 = load %struct.qxl_ring*, %struct.qxl_ring** %5, align 8
  %18 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %17, i32 0, i32 2
  %19 = load i64, i64* %12, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %8, align 8
  %22 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %8, align 8
  %26 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %8, align 8
  %30 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %86

33:                                               ; preds = %3
  %34 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %8, align 8
  %35 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %8, align 8
  %39 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = call i32 (...) @mb()
  %41 = load %struct.qxl_ring*, %struct.qxl_ring** %5, align 8
  %42 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %41, i32 0, i32 2
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = call i32 (...) @drm_can_sleep()
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %53, %47
  %49 = load %struct.qxl_ring*, %struct.qxl_ring** %5, align 8
  %50 = call i32 @qxl_check_header(%struct.qxl_ring* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @udelay(i32 1)
  br label %48

55:                                               ; preds = %48
  br label %81

56:                                               ; preds = %33
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load %struct.qxl_ring*, %struct.qxl_ring** %5, align 8
  %61 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.qxl_ring*, %struct.qxl_ring** %5, align 8
  %65 = call i32 @qxl_check_header(%struct.qxl_ring* %64)
  %66 = call i32 @wait_event_interruptible(i32 %63, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %136

71:                                               ; preds = %59
  br label %80

72:                                               ; preds = %56
  %73 = load %struct.qxl_ring*, %struct.qxl_ring** %5, align 8
  %74 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.qxl_ring*, %struct.qxl_ring** %5, align 8
  %78 = call i32 @qxl_check_header(%struct.qxl_ring* %77)
  %79 = call i32 @wait_event(i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %72, %71
  br label %81

81:                                               ; preds = %80, %55
  %82 = load %struct.qxl_ring*, %struct.qxl_ring** %5, align 8
  %83 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %82, i32 0, i32 2
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  br label %86

86:                                               ; preds = %81, %3
  %87 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %8, align 8
  %88 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.qxl_ring*, %struct.qxl_ring** %5, align 8
  %91 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 1
  %94 = and i32 %89, %93
  store i32 %94, i32* %10, align 4
  %95 = load %struct.qxl_ring*, %struct.qxl_ring** %5, align 8
  %96 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %95, i32 0, i32 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.qxl_ring*, %struct.qxl_ring** %5, align 8
  %102 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %100, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %99, i64 %105
  store i32* %106, i32** %9, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = bitcast i32* %107 to i8*
  %109 = load i8*, i8** %6, align 8
  %110 = load %struct.qxl_ring*, %struct.qxl_ring** %5, align 8
  %111 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @memcpy(i8* %108, i8* %109, i32 %112)
  %114 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %8, align 8
  %115 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = call i32 (...) @mb()
  %119 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %8, align 8
  %120 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.qxl_ring_header*, %struct.qxl_ring_header** %8, align 8
  %123 = getelementptr inbounds %struct.qxl_ring_header, %struct.qxl_ring_header* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %121, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %86
  %127 = load %struct.qxl_ring*, %struct.qxl_ring** %5, align 8
  %128 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @outb(i32 0, i32 %129)
  br label %131

131:                                              ; preds = %126, %86
  %132 = load %struct.qxl_ring*, %struct.qxl_ring** %5, align 8
  %133 = getelementptr inbounds %struct.qxl_ring, %struct.qxl_ring* %132, i32 0, i32 2
  %134 = load i64, i64* %12, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %131, %69
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @drm_can_sleep(...) #1

declare dso_local i32 @qxl_check_header(%struct.qxl_ring*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
