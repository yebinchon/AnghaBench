; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dsi.c_mipi_dsi_create_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dsi.c_mipi_dsi_create_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_packet = type { i32*, i32, i32*, i32 }
%struct.mipi_dsi_msg = type { i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mipi_dsi_create_packet(%struct.mipi_dsi_packet* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_packet*, align 8
  %5 = alloca %struct.mipi_dsi_msg*, align 8
  %6 = alloca i32*, align 8
  store %struct.mipi_dsi_packet* %0, %struct.mipi_dsi_packet** %4, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %5, align 8
  %7 = load %struct.mipi_dsi_packet*, %struct.mipi_dsi_packet** %4, align 8
  %8 = icmp ne %struct.mipi_dsi_packet* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %11 = icmp ne %struct.mipi_dsi_msg* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %132

15:                                               ; preds = %9
  %16 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %17 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @mipi_dsi_packet_format_is_short(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %15
  %22 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %23 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @mipi_dsi_packet_format_is_long(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %132

30:                                               ; preds = %21, %15
  %31 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %32 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 3
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %132

38:                                               ; preds = %30
  %39 = load %struct.mipi_dsi_packet*, %struct.mipi_dsi_packet** %4, align 8
  %40 = call i32 @memset(%struct.mipi_dsi_packet* %39, i32 0, i32 32)
  %41 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %42 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 3
  %45 = shl i32 %44, 6
  %46 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %47 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 63
  %50 = or i32 %45, %49
  %51 = load %struct.mipi_dsi_packet*, %struct.mipi_dsi_packet** %4, align 8
  %52 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %56 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @mipi_dsi_packet_format_is_long(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %38
  %61 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %62 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %63, 0
  %65 = and i32 %64, 255
  %66 = load %struct.mipi_dsi_packet*, %struct.mipi_dsi_packet** %4, align 8
  %67 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %65, i32* %69, align 4
  %70 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %71 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = ashr i32 %72, 8
  %74 = and i32 %73, 255
  %75 = load %struct.mipi_dsi_packet*, %struct.mipi_dsi_packet** %4, align 8
  %76 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 %74, i32* %78, align 4
  %79 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %80 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mipi_dsi_packet*, %struct.mipi_dsi_packet** %4, align 8
  %83 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %85 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.mipi_dsi_packet*, %struct.mipi_dsi_packet** %4, align 8
  %88 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  br label %123

89:                                               ; preds = %38
  %90 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %91 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %6, align 8
  %93 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %94 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  br label %102

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %97
  %103 = phi i32 [ %100, %97 ], [ 0, %101 ]
  %104 = load %struct.mipi_dsi_packet*, %struct.mipi_dsi_packet** %4, align 8
  %105 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 %103, i32* %107, align 4
  %108 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %109 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %112, label %116

112:                                              ; preds = %102
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  br label %117

116:                                              ; preds = %102
  br label %117

117:                                              ; preds = %116, %112
  %118 = phi i32 [ %115, %112 ], [ 0, %116 ]
  %119 = load %struct.mipi_dsi_packet*, %struct.mipi_dsi_packet** %4, align 8
  %120 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  store i32 %118, i32* %122, align 4
  br label %123

123:                                              ; preds = %117, %60
  %124 = load %struct.mipi_dsi_packet*, %struct.mipi_dsi_packet** %4, align 8
  %125 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = add i64 8, %127
  %129 = trunc i64 %128 to i32
  %130 = load %struct.mipi_dsi_packet*, %struct.mipi_dsi_packet** %4, align 8
  %131 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %123, %35, %27, %12
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @mipi_dsi_packet_format_is_short(i32) #1

declare dso_local i64 @mipi_dsi_packet_format_is_long(i32) #1

declare dso_local i32 @memset(%struct.mipi_dsi_packet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
