; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_protect_table_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_protect_table_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmgt_guest_info = type { i32 }
%struct.kvmgt_pgfn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmgt_guest_info*, i32)* @kvmgt_protect_table_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmgt_protect_table_del(%struct.kvmgt_guest_info* %0, i32 %1) #0 {
  %3 = alloca %struct.kvmgt_guest_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmgt_pgfn*, align 8
  store %struct.kvmgt_guest_info* %0, %struct.kvmgt_guest_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.kvmgt_pgfn* @__kvmgt_protect_table_find(%struct.kvmgt_guest_info* %6, i32 %7)
  store %struct.kvmgt_pgfn* %8, %struct.kvmgt_pgfn** %5, align 8
  %9 = load %struct.kvmgt_pgfn*, %struct.kvmgt_pgfn** %5, align 8
  %10 = icmp ne %struct.kvmgt_pgfn* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.kvmgt_pgfn*, %struct.kvmgt_pgfn** %5, align 8
  %13 = getelementptr inbounds %struct.kvmgt_pgfn, %struct.kvmgt_pgfn* %12, i32 0, i32 0
  %14 = call i32 @hash_del(i32* %13)
  %15 = load %struct.kvmgt_pgfn*, %struct.kvmgt_pgfn** %5, align 8
  %16 = call i32 @kfree(%struct.kvmgt_pgfn* %15)
  br label %17

17:                                               ; preds = %11, %2
  ret void
}

declare dso_local %struct.kvmgt_pgfn* @__kvmgt_protect_table_find(%struct.kvmgt_guest_info*, i32) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @kfree(%struct.kvmgt_pgfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
