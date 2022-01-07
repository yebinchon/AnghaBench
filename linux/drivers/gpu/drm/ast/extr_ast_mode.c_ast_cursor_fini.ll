; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_cursor_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_cursor_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.ast_private* }
%struct.ast_private = type { i32 }
%struct.drm_gem_vram_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @ast_cursor_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_cursor_fini(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca %struct.drm_gem_vram_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  store %struct.ast_private* %7, %struct.ast_private** %3, align 8
  %8 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %9 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(i32 %10)
  store %struct.drm_gem_vram_object* %11, %struct.drm_gem_vram_object** %4, align 8
  %12 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %4, align 8
  %13 = call i32 @drm_gem_vram_kunmap(%struct.drm_gem_vram_object* %12)
  %14 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %4, align 8
  %15 = call i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object* %14)
  %16 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %17 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @drm_gem_object_put_unlocked(i32 %18)
  ret void
}

declare dso_local %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(i32) #1

declare dso_local i32 @drm_gem_vram_kunmap(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
