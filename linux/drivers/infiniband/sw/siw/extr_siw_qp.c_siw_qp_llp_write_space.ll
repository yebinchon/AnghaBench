; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_llp_write_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_llp_write_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.siw_cep = type { i32, i32 (%struct.sock*)* }

@SOCK_NOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siw_qp_llp_write_space(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.siw_cep*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 0
  %6 = call i32 @read_lock(i32* %5)
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.siw_cep* @sk_to_cep(%struct.sock* %7)
  store %struct.siw_cep* %8, %struct.siw_cep** %3, align 8
  %9 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %10 = icmp ne %struct.siw_cep* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %13 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %12, i32 0, i32 1
  %14 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %13, align 8
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = call i32 %14(%struct.sock* %15)
  %17 = load i32, i32* @SOCK_NOSPACE, align 4
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @test_bit(i32 %17, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %11
  %25 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %26 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @siw_sq_start(i32 %27)
  br label %29

29:                                               ; preds = %24, %11
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.sock*, %struct.sock** %2, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = call i32 @read_unlock(i32* %32)
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.siw_cep* @sk_to_cep(%struct.sock*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @siw_sq_start(i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
