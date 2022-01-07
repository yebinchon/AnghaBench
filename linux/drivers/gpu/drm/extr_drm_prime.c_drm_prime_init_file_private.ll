; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_prime_init_file_private.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_prime_init_file_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_prime_file_private = type { i8*, i8*, i32 }

@RB_ROOT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_prime_init_file_private(%struct.drm_prime_file_private* %0) #0 {
  %2 = alloca %struct.drm_prime_file_private*, align 8
  store %struct.drm_prime_file_private* %0, %struct.drm_prime_file_private** %2, align 8
  %3 = load %struct.drm_prime_file_private*, %struct.drm_prime_file_private** %2, align 8
  %4 = getelementptr inbounds %struct.drm_prime_file_private, %struct.drm_prime_file_private* %3, i32 0, i32 2
  %5 = call i32 @mutex_init(i32* %4)
  %6 = load i8*, i8** @RB_ROOT, align 8
  %7 = load %struct.drm_prime_file_private*, %struct.drm_prime_file_private** %2, align 8
  %8 = getelementptr inbounds %struct.drm_prime_file_private, %struct.drm_prime_file_private* %7, i32 0, i32 1
  store i8* %6, i8** %8, align 8
  %9 = load i8*, i8** @RB_ROOT, align 8
  %10 = load %struct.drm_prime_file_private*, %struct.drm_prime_file_private** %2, align 8
  %11 = getelementptr inbounds %struct.drm_prime_file_private, %struct.drm_prime_file_private* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
