; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_binding.c_vmw_binding_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_binding.c_vmw_binding_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_binding_info = type { i32 }
%struct.vmw_ctx_binding_state = type { i32 }
%struct.vmw_ctx_bindinfo = type { i64, i32, i32, i32, i32* }

@vmw_binding_infos = common dso_local global %struct.vmw_binding_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_binding_add(%struct.vmw_ctx_binding_state* %0, %struct.vmw_ctx_bindinfo* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vmw_ctx_binding_state*, align 8
  %6 = alloca %struct.vmw_ctx_bindinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmw_ctx_bindinfo*, align 8
  %10 = alloca %struct.vmw_binding_info*, align 8
  store %struct.vmw_ctx_binding_state* %0, %struct.vmw_ctx_binding_state** %5, align 8
  store %struct.vmw_ctx_bindinfo* %1, %struct.vmw_ctx_bindinfo** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %5, align 8
  %12 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %6, align 8
  %13 = getelementptr inbounds %struct.vmw_ctx_bindinfo, %struct.vmw_ctx_bindinfo* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.vmw_ctx_bindinfo* @vmw_binding_loc(%struct.vmw_ctx_binding_state* %11, i64 %14, i32 %15, i32 %16)
  store %struct.vmw_ctx_bindinfo* %17, %struct.vmw_ctx_bindinfo** %9, align 8
  %18 = load %struct.vmw_binding_info*, %struct.vmw_binding_info** @vmw_binding_infos, align 8
  %19 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %6, align 8
  %20 = getelementptr inbounds %struct.vmw_ctx_bindinfo, %struct.vmw_ctx_bindinfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.vmw_binding_info, %struct.vmw_binding_info* %18, i64 %21
  store %struct.vmw_binding_info* %22, %struct.vmw_binding_info** %10, align 8
  %23 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %9, align 8
  %24 = getelementptr inbounds %struct.vmw_ctx_bindinfo, %struct.vmw_ctx_bindinfo* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %9, align 8
  %29 = call i32 @vmw_binding_drop(%struct.vmw_ctx_bindinfo* %28)
  br label %30

30:                                               ; preds = %27, %4
  %31 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %9, align 8
  %32 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %6, align 8
  %33 = load %struct.vmw_binding_info*, %struct.vmw_binding_info** %10, align 8
  %34 = getelementptr inbounds %struct.vmw_binding_info, %struct.vmw_binding_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(%struct.vmw_ctx_bindinfo* %31, %struct.vmw_ctx_bindinfo* %32, i32 %35)
  %37 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %9, align 8
  %38 = getelementptr inbounds %struct.vmw_ctx_bindinfo, %struct.vmw_ctx_bindinfo* %37, i32 0, i32 1
  store i32 0, i32* %38, align 8
  %39 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %9, align 8
  %40 = getelementptr inbounds %struct.vmw_ctx_bindinfo, %struct.vmw_ctx_bindinfo* %39, i32 0, i32 3
  %41 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %5, align 8
  %42 = getelementptr inbounds %struct.vmw_ctx_binding_state, %struct.vmw_ctx_binding_state* %41, i32 0, i32 0
  %43 = call i32 @list_add(i32* %40, i32* %42)
  %44 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %9, align 8
  %45 = getelementptr inbounds %struct.vmw_ctx_bindinfo, %struct.vmw_ctx_bindinfo* %44, i32 0, i32 2
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  ret void
}

declare dso_local %struct.vmw_ctx_bindinfo* @vmw_binding_loc(%struct.vmw_ctx_binding_state*, i64, i32, i32) #1

declare dso_local i32 @vmw_binding_drop(%struct.vmw_ctx_bindinfo*) #1

declare dso_local i32 @memcpy(%struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
