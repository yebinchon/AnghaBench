; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_cep_socket_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_cep_socket_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_cep = type { %struct.socket* }
%struct.socket = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.siw_cep* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siw_cep*, %struct.socket*)* @siw_cep_socket_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siw_cep_socket_assoc(%struct.siw_cep* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.siw_cep*, align 8
  %4 = alloca %struct.socket*, align 8
  store %struct.siw_cep* %0, %struct.siw_cep** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  %5 = load %struct.socket*, %struct.socket** %4, align 8
  %6 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %7 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %6, i32 0, i32 0
  store %struct.socket* %5, %struct.socket** %7, align 8
  %8 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %9 = call i32 @siw_cep_get(%struct.siw_cep* %8)
  %10 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.siw_cep* %10, %struct.siw_cep** %14, align 8
  %15 = load %struct.socket*, %struct.socket** %4, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = call i32 @siw_sk_save_upcalls(%struct.TYPE_3__* %17)
  %19 = load %struct.socket*, %struct.socket** %4, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call i32 @siw_sk_assign_cm_upcalls(%struct.TYPE_3__* %21)
  ret void
}

declare dso_local i32 @siw_cep_get(%struct.siw_cep*) #1

declare dso_local i32 @siw_sk_save_upcalls(%struct.TYPE_3__*) #1

declare dso_local i32 @siw_sk_assign_cm_upcalls(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
