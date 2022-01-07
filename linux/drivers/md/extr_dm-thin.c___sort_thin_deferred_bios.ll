; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c___sort_thin_deferred_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c___sort_thin_deferred_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { %struct.bio_list }
%struct.bio_list = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*)* @__sort_thin_deferred_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sort_thin_deferred_bios(%struct.thin_c* %0) #0 {
  %2 = alloca %struct.thin_c*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.bio_list, align 4
  store %struct.thin_c* %0, %struct.thin_c** %2, align 8
  %5 = call i32 @bio_list_init(%struct.bio_list* %4)
  %6 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %7 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %6, i32 0, i32 0
  %8 = call i32 @bio_list_merge(%struct.bio_list* %4, %struct.bio_list* %7)
  %9 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %10 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %9, i32 0, i32 0
  %11 = call i32 @bio_list_init(%struct.bio_list* %10)
  br label %12

12:                                               ; preds = %15, %1
  %13 = call %struct.bio* @bio_list_pop(%struct.bio_list* %4)
  store %struct.bio* %13, %struct.bio** %3, align 8
  %14 = icmp ne %struct.bio* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %17 = load %struct.bio*, %struct.bio** %3, align 8
  %18 = call i32 @__thin_bio_rb_add(%struct.thin_c* %16, %struct.bio* %17)
  br label %12

19:                                               ; preds = %12
  %20 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %21 = call i32 @__extract_sorted_bios(%struct.thin_c* %20)
  ret void
}

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @bio_list_merge(%struct.bio_list*, %struct.bio_list*) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @__thin_bio_rb_add(%struct.thin_c*, %struct.bio*) #1

declare dso_local i32 @__extract_sorted_bios(%struct.thin_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
