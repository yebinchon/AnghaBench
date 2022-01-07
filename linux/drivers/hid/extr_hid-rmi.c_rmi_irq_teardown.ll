; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_irq_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_irq_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_data = type { i64, %struct.irq_domain* }
%struct.irq_domain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rmi_irq_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmi_irq_teardown(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rmi_data*, align 8
  %4 = alloca %struct.irq_domain*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.rmi_data*
  store %struct.rmi_data* %6, %struct.rmi_data** %3, align 8
  %7 = load %struct.rmi_data*, %struct.rmi_data** %3, align 8
  %8 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %7, i32 0, i32 1
  %9 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  store %struct.irq_domain* %9, %struct.irq_domain** %4, align 8
  %10 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %11 = icmp ne %struct.irq_domain* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %15 = call i32 @irq_find_mapping(%struct.irq_domain* %14, i32 0)
  %16 = call i32 @irq_dispose_mapping(i32 %15)
  %17 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %18 = call i32 @irq_domain_remove(%struct.irq_domain* %17)
  %19 = load %struct.rmi_data*, %struct.rmi_data** %3, align 8
  %20 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %19, i32 0, i32 1
  store %struct.irq_domain* null, %struct.irq_domain** %20, align 8
  %21 = load %struct.rmi_data*, %struct.rmi_data** %3, align 8
  %22 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @irq_find_mapping(%struct.irq_domain*, i32) #1

declare dso_local i32 @irq_domain_remove(%struct.irq_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
