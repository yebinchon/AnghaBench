; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_is_valid_gfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_is_valid_gfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmgt_guest_info = type { %struct.kvm* }
%struct.kvm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @kvmgt_is_valid_gfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmgt_is_valid_gfn(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvmgt_guest_info*, align 8
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @handle_valid(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = inttoptr i64 %15 to %struct.kvmgt_guest_info*
  store %struct.kvmgt_guest_info* %16, %struct.kvmgt_guest_info** %6, align 8
  %17 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %6, align 8
  %18 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %17, i32 0, i32 0
  %19 = load %struct.kvm*, %struct.kvm** %18, align 8
  store %struct.kvm* %19, %struct.kvm** %7, align 8
  %20 = load %struct.kvm*, %struct.kvm** %7, align 8
  %21 = getelementptr inbounds %struct.kvm, %struct.kvm* %20, i32 0, i32 0
  %22 = call i32 @srcu_read_lock(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.kvm*, %struct.kvm** %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @kvm_is_visible_gfn(%struct.kvm* %23, i64 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.kvm*, %struct.kvm** %7, align 8
  %27 = getelementptr inbounds %struct.kvm, %struct.kvm* %26, i32 0, i32 0
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @srcu_read_unlock(i32* %27, i32 %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %14, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @handle_valid(i64) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @kvm_is_visible_gfn(%struct.kvm*, i64) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
