; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_binding.c_vmw_binding_emit_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_binding.c_vmw_binding_emit_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_ctx_binding_state = type { i32 }

@VMW_BINDING_NUM_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_ctx_binding_state*)* @vmw_binding_emit_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_binding_emit_dirty(%struct.vmw_ctx_binding_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_ctx_binding_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.vmw_ctx_binding_state* %0, %struct.vmw_ctx_binding_state** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %35, %1
  %7 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %3, align 8
  %8 = getelementptr inbounds %struct.vmw_ctx_binding_state, %struct.vmw_ctx_binding_state* %7, i32 0, i32 0
  %9 = load i64, i64* @VMW_BINDING_NUM_BITS, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @find_next_bit(i32* %8, i64 %9, i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* @VMW_BINDING_NUM_BITS, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %6
  %15 = load i64, i64* %5, align 8
  switch i64 %15, label %28 [
    i64 130, label %16
    i64 131, label %19
    i64 129, label %22
    i64 128, label %25
  ]

16:                                               ; preds = %14
  %17 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %3, align 8
  %18 = call i32 @vmw_emit_set_rt(%struct.vmw_ctx_binding_state* %17)
  store i32 %18, i32* %4, align 4
  br label %30

19:                                               ; preds = %14
  %20 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %3, align 8
  %21 = call i32 @vmw_binding_emit_dirty_ps(%struct.vmw_ctx_binding_state* %20)
  store i32 %21, i32* %4, align 4
  br label %30

22:                                               ; preds = %14
  %23 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %3, align 8
  %24 = call i32 @vmw_emit_set_so(%struct.vmw_ctx_binding_state* %23)
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %14
  %26 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %3, align 8
  %27 = call i32 @vmw_emit_set_vb(%struct.vmw_ctx_binding_state* %26)
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %14
  %29 = call i32 (...) @BUG()
  br label %30

30:                                               ; preds = %28, %25, %22, %19, %16
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %43

35:                                               ; preds = %30
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %3, align 8
  %38 = getelementptr inbounds %struct.vmw_ctx_binding_state, %struct.vmw_ctx_binding_state* %37, i32 0, i32 0
  %39 = call i32 @__clear_bit(i64 %36, i32* %38)
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %5, align 8
  br label %6

42:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @find_next_bit(i32*, i64, i64) #1

declare dso_local i32 @vmw_emit_set_rt(%struct.vmw_ctx_binding_state*) #1

declare dso_local i32 @vmw_binding_emit_dirty_ps(%struct.vmw_ctx_binding_state*) #1

declare dso_local i32 @vmw_emit_set_so(%struct.vmw_ctx_binding_state*) #1

declare dso_local i32 @vmw_emit_set_vb(%struct.vmw_ctx_binding_state*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @__clear_bit(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
