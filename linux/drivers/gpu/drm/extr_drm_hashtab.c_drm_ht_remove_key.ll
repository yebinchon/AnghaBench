; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_hashtab.c_drm_ht_remove_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_hashtab.c_drm_ht_remove_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_open_hash = type { i32 }
%struct.hlist_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_ht_remove_key(%struct.drm_open_hash* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_open_hash*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hlist_node*, align 8
  store %struct.drm_open_hash* %0, %struct.drm_open_hash** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.drm_open_hash*, %struct.drm_open_hash** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call %struct.hlist_node* @drm_ht_find_key(%struct.drm_open_hash* %7, i64 %8)
  store %struct.hlist_node* %9, %struct.hlist_node** %6, align 8
  %10 = load %struct.hlist_node*, %struct.hlist_node** %6, align 8
  %11 = icmp ne %struct.hlist_node* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.hlist_node*, %struct.hlist_node** %6, align 8
  %14 = call i32 @hlist_del_init_rcu(%struct.hlist_node* %13)
  store i32 0, i32* %3, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.hlist_node* @drm_ht_find_key(%struct.drm_open_hash*, i64) #1

declare dso_local i32 @hlist_del_init_rcu(%struct.hlist_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
