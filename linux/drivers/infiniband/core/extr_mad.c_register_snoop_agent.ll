; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_register_snoop_agent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_register_snoop_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_qp_info = type { i32, i32, i32, %struct.ib_mad_snoop_private** }
%struct.ib_mad_snoop_private = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_qp_info*, %struct.ib_mad_snoop_private*)* @register_snoop_agent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_snoop_agent(%struct.ib_mad_qp_info* %0, %struct.ib_mad_snoop_private* %1) #0 {
  %3 = alloca %struct.ib_mad_qp_info*, align 8
  %4 = alloca %struct.ib_mad_snoop_private*, align 8
  %5 = alloca %struct.ib_mad_snoop_private**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ib_mad_qp_info* %0, %struct.ib_mad_qp_info** %3, align 8
  store %struct.ib_mad_snoop_private* %1, %struct.ib_mad_snoop_private** %4, align 8
  %8 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %9 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %8, i32 0, i32 1
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %29, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %15 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %20 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %19, i32 0, i32 3
  %21 = load %struct.ib_mad_snoop_private**, %struct.ib_mad_snoop_private*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %21, i64 %23
  %25 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %24, align 8
  %26 = icmp ne %struct.ib_mad_snoop_private* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %32

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %12

32:                                               ; preds = %27, %12
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %35 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %32
  %39 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %40 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %39, i32 0, i32 3
  %41 = load %struct.ib_mad_snoop_private**, %struct.ib_mad_snoop_private*** %40, align 8
  %42 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %43 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = mul i64 8, %46
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call %struct.ib_mad_snoop_private** @krealloc(%struct.ib_mad_snoop_private** %41, i32 %48, i32 %49)
  store %struct.ib_mad_snoop_private** %50, %struct.ib_mad_snoop_private*** %5, align 8
  %51 = load %struct.ib_mad_snoop_private**, %struct.ib_mad_snoop_private*** %5, align 8
  %52 = icmp ne %struct.ib_mad_snoop_private** %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %75

56:                                               ; preds = %38
  %57 = load %struct.ib_mad_snoop_private**, %struct.ib_mad_snoop_private*** %5, align 8
  %58 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %59 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %58, i32 0, i32 3
  store %struct.ib_mad_snoop_private** %57, %struct.ib_mad_snoop_private*** %59, align 8
  %60 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %61 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %56, %32
  %65 = load %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %4, align 8
  %66 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %67 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %66, i32 0, i32 3
  %68 = load %struct.ib_mad_snoop_private**, %struct.ib_mad_snoop_private*** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ib_mad_snoop_private*, %struct.ib_mad_snoop_private** %68, i64 %70
  store %struct.ib_mad_snoop_private* %65, %struct.ib_mad_snoop_private** %71, align 8
  %72 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %73 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %72, i32 0, i32 2
  %74 = call i32 @atomic_inc(i32* %73)
  br label %75

75:                                               ; preds = %64, %53
  %76 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %77 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %76, i32 0, i32 1
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ib_mad_snoop_private** @krealloc(%struct.ib_mad_snoop_private**, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
