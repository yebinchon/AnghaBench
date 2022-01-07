; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_irq.c_vmw_fallback_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_irq.c_vmw_fallback_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i32*, i32, i64, %struct.vmw_fifo_state }
%struct.vmw_fifo_state = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@__wait = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SVGA device lockup.\0A\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@SVGA_FIFO_FENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_fallback_wait(%struct.vmw_private* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.vmw_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.vmw_fifo_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32 (%struct.vmw_private*, i32)*, align 8
  %19 = alloca i32*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %20 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %21 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %20, i32 0, i32 4
  store %struct.vmw_fifo_state* %21, %struct.vmw_fifo_state** %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* %12, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %17, align 8
  %25 = load i32, i32* @__wait, align 4
  %26 = call i32 @DEFINE_WAIT(i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 (%struct.vmw_private*, i32)* @vmw_fifo_idle, i32 (%struct.vmw_private*, i32)* @vmw_seqno_passed
  store i32 (%struct.vmw_private*, i32)* %30, i32 (%struct.vmw_private*, i32)** %18, align 8
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %6
  %34 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %13, align 8
  %35 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %34, i32 0, i32 0
  %36 = call i32 @down_read(i32* %35)
  %37 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %38 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %43 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 10, %46
  %48 = call i32 @vmw_cmdbuf_idle(i64 %44, i32 %45, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %141

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %33
  br label %54

54:                                               ; preds = %53, %6
  %55 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %56 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %55, i32 0, i32 2
  %57 = call i32 @atomic_read(i32* %56)
  store i32 %57, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %58

58:                                               ; preds = %117, %54
  %59 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %60 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %59, i32 0, i32 0
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  br label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = call i32 @prepare_to_wait(i32* %60, i32* @__wait, i32 %68)
  %70 = load i32 (%struct.vmw_private*, i32)*, i32 (%struct.vmw_private*, i32)** %18, align 8
  %71 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 %70(%struct.vmw_private* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %118

76:                                               ; preds = %67
  %77 = load i64, i64* @jiffies, align 8
  %78 = load i64, i64* %17, align 8
  %79 = call i64 @time_after_eq(i64 %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %118

83:                                               ; preds = %76
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 @schedule_timeout(i32 1)
  br label %107

88:                                               ; preds = %83
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  %91 = and i32 %90, 15
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %88
  %94 = load i32, i32* @TASK_RUNNING, align 4
  %95 = call i32 @__set_current_state(i32 %94)
  %96 = call i32 (...) @schedule()
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  br label %103

101:                                              ; preds = %93
  %102 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = call i32 @__set_current_state(i32 %104)
  br label %106

106:                                              ; preds = %103, %88
  br label %107

107:                                              ; preds = %106, %86
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i32, i32* @current, align 4
  %112 = call i64 @signal_pending(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* @ERESTARTSYS, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %16, align 4
  br label %118

117:                                              ; preds = %110, %107
  br label %58

118:                                              ; preds = %114, %81, %75
  %119 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %120 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %119, i32 0, i32 0
  %121 = call i32 @finish_wait(i32* %120, i32* @__wait)
  %122 = load i32, i32* %16, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %118
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %129 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %19, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load i32*, i32** %19, align 8
  %133 = load i32, i32* @SVGA_FIFO_FENCE, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = call i32 @vmw_mmio_write(i32 %131, i32* %135)
  br label %137

137:                                              ; preds = %127, %124, %118
  %138 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %139 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %138, i32 0, i32 0
  %140 = call i32 @wake_up_all(i32* %139)
  br label %141

141:                                              ; preds = %137, %51
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %13, align 8
  %146 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %145, i32 0, i32 0
  %147 = call i32 @up_read(i32* %146)
  br label %148

148:                                              ; preds = %144, %141
  %149 = load i32, i32* %16, align 4
  ret i32 %149
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @vmw_fifo_idle(%struct.vmw_private*, i32) #1

declare dso_local i32 @vmw_seqno_passed(%struct.vmw_private*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @vmw_cmdbuf_idle(i64, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @vmw_mmio_write(i32, i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
