; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_set_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_set_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etmv4_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etmv4_config*)* @etm4_set_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etm4_set_default(%struct.etmv4_config* %0) #0 {
  %2 = alloca %struct.etmv4_config*, align 8
  store %struct.etmv4_config* %0, %struct.etmv4_config** %2, align 8
  %3 = load %struct.etmv4_config*, %struct.etmv4_config** %2, align 8
  %4 = icmp ne %struct.etmv4_config* %3, null
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i64 @WARN_ON_ONCE(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.etmv4_config*, %struct.etmv4_config** %2, align 8
  %12 = call i32 @etm4_set_default_config(%struct.etmv4_config* %11)
  %13 = load %struct.etmv4_config*, %struct.etmv4_config** %2, align 8
  %14 = call i32 @etm4_set_default_filter(%struct.etmv4_config* %13)
  br label %15

15:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @etm4_set_default_config(%struct.etmv4_config*) #1

declare dso_local i32 @etm4_set_default_filter(%struct.etmv4_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
