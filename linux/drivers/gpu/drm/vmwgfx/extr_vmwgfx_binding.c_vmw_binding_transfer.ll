; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_binding.c_vmw_binding_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_binding.c_vmw_binding_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vmw_ctx_binding_state = type { i32 }
%struct.vmw_ctx_bindinfo = type { i64, %struct.TYPE_3__*, i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i32 }

@vmw_binding_infos = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_bindinfo*)* @vmw_binding_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_binding_transfer(%struct.vmw_ctx_binding_state* %0, %struct.vmw_ctx_binding_state* %1, %struct.vmw_ctx_bindinfo* %2) #0 {
  %4 = alloca %struct.vmw_ctx_binding_state*, align 8
  %5 = alloca %struct.vmw_ctx_binding_state*, align 8
  %6 = alloca %struct.vmw_ctx_bindinfo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vmw_ctx_bindinfo*, align 8
  store %struct.vmw_ctx_binding_state* %0, %struct.vmw_ctx_binding_state** %4, align 8
  store %struct.vmw_ctx_binding_state* %1, %struct.vmw_ctx_binding_state** %5, align 8
  store %struct.vmw_ctx_bindinfo* %2, %struct.vmw_ctx_bindinfo** %6, align 8
  %9 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %6, align 8
  %10 = ptrtoint %struct.vmw_ctx_bindinfo* %9 to i64
  %11 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %5, align 8
  %12 = ptrtoint %struct.vmw_ctx_binding_state* %11 to i64
  %13 = sub i64 %10, %12
  store i64 %13, i64* %7, align 8
  %14 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %4, align 8
  %15 = ptrtoint %struct.vmw_ctx_binding_state* %14 to i64
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %15, %16
  %18 = inttoptr i64 %17 to %struct.vmw_ctx_bindinfo*
  store %struct.vmw_ctx_bindinfo* %18, %struct.vmw_ctx_bindinfo** %8, align 8
  %19 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %8, align 8
  %20 = getelementptr inbounds %struct.vmw_ctx_bindinfo, %struct.vmw_ctx_bindinfo* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %6, align 8
  %25 = getelementptr inbounds %struct.vmw_ctx_bindinfo, %struct.vmw_ctx_bindinfo* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %8, align 8
  %29 = call i32 @vmw_binding_drop(%struct.vmw_ctx_bindinfo* %28)
  br label %30

30:                                               ; preds = %23, %3
  %31 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %6, align 8
  %32 = getelementptr inbounds %struct.vmw_ctx_bindinfo, %struct.vmw_ctx_bindinfo* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %58

35:                                               ; preds = %30
  %36 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %8, align 8
  %37 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %6, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vmw_binding_infos, align 8
  %39 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %6, align 8
  %40 = getelementptr inbounds %struct.vmw_ctx_bindinfo, %struct.vmw_ctx_bindinfo* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(%struct.vmw_ctx_bindinfo* %36, %struct.vmw_ctx_bindinfo* %37, i32 %44)
  %46 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %8, align 8
  %47 = getelementptr inbounds %struct.vmw_ctx_bindinfo, %struct.vmw_ctx_bindinfo* %46, i32 0, i32 3
  %48 = load %struct.vmw_ctx_binding_state*, %struct.vmw_ctx_binding_state** %4, align 8
  %49 = getelementptr inbounds %struct.vmw_ctx_binding_state, %struct.vmw_ctx_binding_state* %48, i32 0, i32 0
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  %51 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %8, align 8
  %52 = getelementptr inbounds %struct.vmw_ctx_bindinfo, %struct.vmw_ctx_bindinfo* %51, i32 0, i32 2
  %53 = load %struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo** %8, align 8
  %54 = getelementptr inbounds %struct.vmw_ctx_bindinfo, %struct.vmw_ctx_bindinfo* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @list_add_tail(i32* %52, i32* %56)
  br label %58

58:                                               ; preds = %35, %30
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vmw_binding_drop(%struct.vmw_ctx_bindinfo*) #1

declare dso_local i32 @memcpy(%struct.vmw_ctx_bindinfo*, %struct.vmw_ctx_bindinfo*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
