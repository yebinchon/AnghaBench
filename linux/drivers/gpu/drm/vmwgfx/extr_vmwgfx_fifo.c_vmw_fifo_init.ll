; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fifo.c_vmw_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i32, i32, i32, i8*, i8*, i8*, i32* }
%struct.vmw_fifo_state = type { i32, i32, i32, i8*, i32, i32, i64, i32*, i32*, i32 }

@VMWGFX_FIFO_STATIC_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"width %d\0A\00", align 1
@SVGA_REG_WIDTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"height %d\0A\00", align 1
@SVGA_REG_HEIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"bpp %d\0A\00", align 1
@SVGA_REG_BITS_PER_PIXEL = common dso_local global i32 0, align 4
@SVGA_REG_ENABLE = common dso_local global i32 0, align 4
@SVGA_REG_CONFIG_DONE = common dso_local global i32 0, align 4
@SVGA_REG_TRACES = common dso_local global i32 0, align 4
@SVGA_REG_ENABLE_ENABLE = common dso_local global i32 0, align 4
@SVGA_REG_ENABLE_HIDE = common dso_local global i32 0, align 4
@SVGA_CAP_EXTENDED_FIFO = common dso_local global i32 0, align 4
@SVGA_REG_MEM_REGS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SVGA_FIFO_MIN = common dso_local global i32 0, align 4
@SVGA_FIFO_MAX = common dso_local global i32 0, align 4
@SVGA_FIFO_NEXT_CMD = common dso_local global i32 0, align 4
@SVGA_FIFO_STOP = common dso_local global i32 0, align 4
@SVGA_FIFO_BUSY = common dso_local global i32 0, align 4
@SVGA_FIFO_CAPABILITIES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Fifo max 0x%08x min 0x%08x cap 0x%08x\0A\00", align 1
@SVGA_FIFO_FENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_fifo_init(%struct.vmw_private* %0, %struct.vmw_fifo_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca %struct.vmw_fifo_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %4, align 8
  store %struct.vmw_fifo_state* %1, %struct.vmw_fifo_state** %5, align 8
  %9 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %10 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %9, i32 0, i32 7
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %13 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load i32, i32* @VMWGFX_FIFO_STATIC_SIZE, align 4
  %15 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %16 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 8
  %17 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %18 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @vmalloc(i32 %19)
  %21 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %22 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %21, i32 0, i32 8
  store i32* %20, i32** %22, align 8
  %23 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %24 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %23, i32 0, i32 8
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %184

33:                                               ; preds = %2
  %34 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %35 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %34, i32 0, i32 7
  store i32* null, i32** %35, align 8
  %36 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %37 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %39 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %41 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %40, i32 0, i32 5
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %44 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %43, i32 0, i32 4
  %45 = call i32 @init_rwsem(i32* %44)
  %46 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %47 = load i32, i32* @SVGA_REG_WIDTH, align 4
  %48 = call i8* @vmw_read(%struct.vmw_private* %46, i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %52 = load i32, i32* @SVGA_REG_HEIGHT, align 4
  %53 = call i8* @vmw_read(%struct.vmw_private* %51, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %57 = load i32, i32* @SVGA_REG_BITS_PER_PIXEL, align 4
  %58 = call i8* @vmw_read(%struct.vmw_private* %56, i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %62 = load i32, i32* @SVGA_REG_ENABLE, align 4
  %63 = call i8* @vmw_read(%struct.vmw_private* %61, i32 %62)
  %64 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %65 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %67 = load i32, i32* @SVGA_REG_CONFIG_DONE, align 4
  %68 = call i8* @vmw_read(%struct.vmw_private* %66, i32 %67)
  %69 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %70 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %69, i32 0, i32 5
  store i8* %68, i8** %70, align 8
  %71 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %72 = load i32, i32* @SVGA_REG_TRACES, align 4
  %73 = call i8* @vmw_read(%struct.vmw_private* %71, i32 %72)
  %74 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %75 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %77 = load i32, i32* @SVGA_REG_ENABLE, align 4
  %78 = load i32, i32* @SVGA_REG_ENABLE_ENABLE, align 4
  %79 = load i32, i32* @SVGA_REG_ENABLE_HIDE, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @vmw_write(%struct.vmw_private* %76, i32 %77, i32 %80)
  %82 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %83 = load i32, i32* @SVGA_REG_TRACES, align 4
  %84 = call i32 @vmw_write(%struct.vmw_private* %82, i32 %83, i32 0)
  store i32 4, i32* %8, align 4
  %85 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %86 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SVGA_CAP_EXTENDED_FIFO, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %33
  %92 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %93 = load i32, i32* @SVGA_REG_MEM_REGS, align 4
  %94 = call i8* @vmw_read(%struct.vmw_private* %92, i32 %93)
  %95 = ptrtoint i8* %94 to i32
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %91, %33
  %97 = load i32, i32* %8, align 4
  %98 = shl i32 %97, 2
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @PAGE_SIZE, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %102, %96
  %105 = load i32, i32* %8, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* @SVGA_FIFO_MIN, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = call i32 @vmw_mmio_write(i32 %105, i32* %109)
  %111 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %112 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* @SVGA_FIFO_MAX, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = call i32 @vmw_mmio_write(i32 %113, i32* %117)
  %119 = call i32 (...) @wmb()
  %120 = load i32, i32* %8, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* @SVGA_FIFO_NEXT_CMD, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = call i32 @vmw_mmio_write(i32 %120, i32* %124)
  %126 = load i32, i32* %8, align 4
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* @SVGA_FIFO_STOP, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = call i32 @vmw_mmio_write(i32 %126, i32* %130)
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* @SVGA_FIFO_BUSY, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = call i32 @vmw_mmio_write(i32 0, i32* %135)
  %137 = call i32 (...) @mb()
  %138 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %139 = load i32, i32* @SVGA_REG_CONFIG_DONE, align 4
  %140 = call i32 @vmw_write(%struct.vmw_private* %138, i32 %139, i32 1)
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* @SVGA_FIFO_MAX, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = call i8* @vmw_mmio_read(i32* %144)
  %146 = ptrtoint i8* %145 to i32
  store i32 %146, i32* %7, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* @SVGA_FIFO_MIN, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = call i8* @vmw_mmio_read(i32* %150)
  %152 = ptrtoint i8* %151 to i32
  store i32 %152, i32* %8, align 4
  %153 = load i32*, i32** %6, align 8
  %154 = load i32, i32* @SVGA_FIFO_CAPABILITIES, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = call i8* @vmw_mmio_read(i32* %156)
  %158 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %159 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %163 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %162, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  %165 = ptrtoint i8* %164 to i32
  %166 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %160, i32 %161, i32 %165)
  %167 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %168 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %167, i32 0, i32 3
  %169 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %170 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @atomic_set(i32* %168, i32 %171)
  %173 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %174 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* @SVGA_FIFO_FENCE, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = call i32 @vmw_mmio_write(i32 %175, i32* %179)
  %181 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %5, align 8
  %182 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %181, i32 0, i32 2
  %183 = call i32 @vmw_marker_queue_init(i32* %182)
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %104, %30
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, ...) #1

declare dso_local i8* @vmw_read(%struct.vmw_private*, i32) #1

declare dso_local i32 @vmw_write(%struct.vmw_private*, i32, i32) #1

declare dso_local i32 @vmw_mmio_write(i32, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mb(...) #1

declare dso_local i8* @vmw_mmio_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @vmw_marker_queue_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
