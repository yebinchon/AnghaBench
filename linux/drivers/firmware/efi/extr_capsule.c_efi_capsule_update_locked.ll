; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_capsule.c_efi_capsule_update_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_capsule.c_efi_capsule_update_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32**, i32, i32)* }
%struct.page = type { i32 }

@capsule_mutex = common dso_local global i32 0, align 4
@efi_reset_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Conflicting capsule reset type %d (%d).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@stop_capsules = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Capsule update raced with reboot, aborting.\0A\00", align 1
@efi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EFI_SUCCESS = common dso_local global i64 0, align 8
@capsule_pending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.page**, i32)* @efi_capsule_update_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_capsule_update_locked(i32* %0, %struct.page** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.page** %1, %struct.page*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32 @lockdep_assert_held(i32* @capsule_mutex)
  %11 = load i32, i32* @efi_reset_type, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i32, i32* @efi_reset_type, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @efi_reset_type, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %13, %3
  %24 = load i32, i32* @stop_capsules, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %47

31:                                               ; preds = %23
  %32 = load %struct.page**, %struct.page*** %6, align 8
  %33 = getelementptr inbounds %struct.page*, %struct.page** %32, i64 0
  %34 = load %struct.page*, %struct.page** %33, align 8
  %35 = call i32 @page_to_phys(%struct.page* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i64 (i32**, i32, i32)*, i64 (i32**, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 0), align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i64 %36(i32** %5, i32 1, i32 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @EFI_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  store i32 1, i32* @capsule_pending, align 4
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* @efi_reset_type, align 4
  br label %44

44:                                               ; preds = %42, %31
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @efi_status_to_err(i64 %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %27, %17
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i32 @efi_status_to_err(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
