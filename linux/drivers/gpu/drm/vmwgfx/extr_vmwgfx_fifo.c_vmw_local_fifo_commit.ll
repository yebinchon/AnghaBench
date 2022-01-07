; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_local_fifo_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_local_fifo_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32*, %struct.vmw_fifo_state }
%struct.vmw_fifo_state = type { i32, i32, i32, i32, i32, i64, i32* }

@SVGA_FIFO_NEXT_CMD = common dso_local global i32 0, align 4
@SVGA_FIFO_MAX = common dso_local global i32 0, align 4
@SVGA_FIFO_MIN = common dso_local global i32 0, align 4
@SVGA_FIFO_CAP_RESERVE = common dso_local global i32 0, align 4
@SVGA_FIFO_RESERVED = common dso_local global i32 0, align 4
@SVGA_SYNC_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_private*, i32)* @vmw_local_fifo_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_local_fifo_commit(%struct.vmw_private* %0, i32 %1) #0 {
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_fifo_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %12 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %11, i32 0, i32 1
  store %struct.vmw_fifo_state* %12, %struct.vmw_fifo_state** %5, align 8
  %13 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %14 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @SVGA_FIFO_NEXT_CMD, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @vmw_mmio_read(i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @SVGA_FIFO_MAX, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @vmw_mmio_read(i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @SVGA_FIFO_MIN, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @vmw_mmio_read(i32* %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %32 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SVGA_FIFO_CAP_RESERVE, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %37 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %2
  %46 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %47 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 3
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %55 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %53, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %61 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %60, i32 0, i32 2
  store i32 0, i32* %61, align 8
  %62 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %63 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %98

66:                                               ; preds = %45
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @vmw_fifo_res_copy(%struct.vmw_fifo_state* %70, i32* %71, i32 %72, i32 %73, i32 %74, i32 %75)
  br label %85

77:                                               ; preds = %66
  %78 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @vmw_fifo_slow_copy(%struct.vmw_fifo_state* %78, i32* %79, i32 %80, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %77, %69
  %86 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %87 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %86, i32 0, i32 6
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %92 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %91, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @vfree(i32* %93)
  %95 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %96 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %95, i32 0, i32 6
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %90, %85
  br label %98

98:                                               ; preds = %97, %45
  %99 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %100 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %99, i32 0, i32 4
  %101 = call i32 @down_write(i32* %100)
  %102 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %103 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %106, %98
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = sub nsw i32 %117, %118
  %120 = load i32, i32* %7, align 4
  %121 = sub nsw i32 %120, %119
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %116, %109
  %123 = call i32 (...) @mb()
  %124 = load i32, i32* %7, align 4
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* @SVGA_FIFO_NEXT_CMD, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = call i32 @vmw_mmio_write(i32 %124, i32* %128)
  br label %130

130:                                              ; preds = %122, %106
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* @SVGA_FIFO_RESERVED, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = call i32 @vmw_mmio_write(i32 0, i32* %137)
  br label %139

139:                                              ; preds = %133, %130
  %140 = call i32 (...) @mb()
  %141 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %142 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %141, i32 0, i32 4
  %143 = call i32 @up_write(i32* %142)
  %144 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %145 = load i32, i32* @SVGA_SYNC_GENERIC, align 4
  %146 = call i32 @vmw_fifo_ping_host(%struct.vmw_private* %144, i32 %145)
  %147 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %148 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %147, i32 0, i32 3
  %149 = call i32 @mutex_unlock(i32* %148)
  ret void
}

declare dso_local i32 @vmw_mmio_read(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vmw_fifo_res_copy(%struct.vmw_fifo_state*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @vmw_fifo_slow_copy(%struct.vmw_fifo_state*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @vmw_mmio_write(i32, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @vmw_fifo_ping_host(%struct.vmw_private*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
