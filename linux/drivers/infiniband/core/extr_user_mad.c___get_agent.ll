; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_user_mad.c___get_agent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_user_mad.c___get_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { i32 }
%struct.ib_umad_file = type { %struct.ib_mad_agent**, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_mad_agent* (%struct.ib_umad_file*, i32)* @__get_agent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_mad_agent* @__get_agent(%struct.ib_umad_file* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_umad_file*, align 8
  %4 = alloca i32, align 4
  store %struct.ib_umad_file* %0, %struct.ib_umad_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ib_umad_file*, %struct.ib_umad_file** %3, align 8
  %6 = getelementptr inbounds %struct.ib_umad_file, %struct.ib_umad_file* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %18

10:                                               ; preds = %2
  %11 = load %struct.ib_umad_file*, %struct.ib_umad_file** %3, align 8
  %12 = getelementptr inbounds %struct.ib_umad_file, %struct.ib_umad_file* %11, i32 0, i32 0
  %13 = load %struct.ib_mad_agent**, %struct.ib_mad_agent*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ib_mad_agent*, %struct.ib_mad_agent** %13, i64 %15
  %17 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %16, align 8
  br label %18

18:                                               ; preds = %10, %9
  %19 = phi %struct.ib_mad_agent* [ null, %9 ], [ %17, %10 ]
  ret %struct.ib_mad_agent* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
