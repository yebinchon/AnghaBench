; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_fsu_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_fsu_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_soc = type { i32 }
%struct.fsu_link_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_fsu_link(%struct.ipu_soc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_soc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsu_link_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ipu_soc* %0, %struct.ipu_soc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.fsu_link_info* @find_fsu_link_info(i32 %12, i32 %13)
  store %struct.fsu_link_info* %14, %struct.fsu_link_info** %8, align 8
  %15 = load %struct.fsu_link_info*, %struct.fsu_link_info** %8, align 8
  %16 = icmp ne %struct.fsu_link_info* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %95

20:                                               ; preds = %3
  %21 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %22 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %21, i32 0, i32 0
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.fsu_link_info*, %struct.fsu_link_info** %8, align 8
  %26 = getelementptr inbounds %struct.fsu_link_info, %struct.fsu_link_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %20
  %31 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %32 = load %struct.fsu_link_info*, %struct.fsu_link_info** %8, align 8
  %33 = getelementptr inbounds %struct.fsu_link_info, %struct.fsu_link_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ipu_cm_read(%struct.ipu_soc* %31, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.fsu_link_info*, %struct.fsu_link_info** %8, align 8
  %38 = getelementptr inbounds %struct.fsu_link_info, %struct.fsu_link_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load %struct.fsu_link_info*, %struct.fsu_link_info** %8, align 8
  %45 = getelementptr inbounds %struct.fsu_link_info, %struct.fsu_link_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.fsu_link_info*, %struct.fsu_link_info** %8, align 8
  %53 = getelementptr inbounds %struct.fsu_link_info, %struct.fsu_link_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ipu_cm_write(%struct.ipu_soc* %50, i32 %51, i32 %55)
  br label %57

57:                                               ; preds = %30, %20
  %58 = load %struct.fsu_link_info*, %struct.fsu_link_info** %8, align 8
  %59 = getelementptr inbounds %struct.fsu_link_info, %struct.fsu_link_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %57
  %64 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %65 = load %struct.fsu_link_info*, %struct.fsu_link_info** %8, align 8
  %66 = getelementptr inbounds %struct.fsu_link_info, %struct.fsu_link_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ipu_cm_read(%struct.ipu_soc* %64, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.fsu_link_info*, %struct.fsu_link_info** %8, align 8
  %71 = getelementptr inbounds %struct.fsu_link_info, %struct.fsu_link_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %10, align 4
  %77 = load %struct.fsu_link_info*, %struct.fsu_link_info** %8, align 8
  %78 = getelementptr inbounds %struct.fsu_link_info, %struct.fsu_link_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.fsu_link_info*, %struct.fsu_link_info** %8, align 8
  %86 = getelementptr inbounds %struct.fsu_link_info, %struct.fsu_link_info* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ipu_cm_write(%struct.ipu_soc* %83, i32 %84, i32 %88)
  br label %90

90:                                               ; preds = %63, %57
  %91 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %92 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %91, i32 0, i32 0
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %90, %17
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.fsu_link_info* @find_fsu_link_info(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_cm_read(%struct.ipu_soc*, i32) #1

declare dso_local i32 @ipu_cm_write(%struct.ipu_soc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
