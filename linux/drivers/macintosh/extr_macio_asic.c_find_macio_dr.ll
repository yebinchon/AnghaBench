; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_macio_asic.c_find_macio_dr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_macio_asic.c_find_macio_dr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_devres = type { i32 }
%struct.macio_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@maciom_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.macio_devres* (%struct.macio_dev*)* @find_macio_dr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.macio_devres* @find_macio_dr(%struct.macio_dev* %0) #0 {
  %2 = alloca %struct.macio_dev*, align 8
  store %struct.macio_dev* %0, %struct.macio_dev** %2, align 8
  %3 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %4 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* @maciom_release, align 4
  %7 = call %struct.macio_devres* @devres_find(i32* %5, i32 %6, i32* null, i32* null)
  ret %struct.macio_devres* %7
}

declare dso_local %struct.macio_devres* @devres_find(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
