; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_gsi.c_mlx5_ib_gsi_post_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_gsi.c_mlx5_ib_gsi_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_send_wr = type { %struct.ib_send_wr* }
%struct.mlx5_ib_gsi_qp = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ib_ud_wr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_gsi_post_send(%struct.ib_qp* %0, %struct.ib_send_wr* %1, %struct.ib_send_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.ib_send_wr**, align 8
  %8 = alloca %struct.mlx5_ib_gsi_qp*, align 8
  %9 = alloca %struct.ib_qp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_ud_wr, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %6, align 8
  store %struct.ib_send_wr** %2, %struct.ib_send_wr*** %7, align 8
  %13 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %14 = call %struct.mlx5_ib_gsi_qp* @gsi_qp(%struct.ib_qp* %13)
  store %struct.mlx5_ib_gsi_qp* %14, %struct.mlx5_ib_gsi_qp** %8, align 8
  br label %15

15:                                               ; preds = %74, %3
  %16 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %17 = icmp ne %struct.ib_send_wr* %16, null
  br i1 %17, label %18, label %78

18:                                               ; preds = %15
  %19 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %20 = call %struct.ib_ud_wr* @ud_wr(%struct.ib_send_wr* %19)
  %21 = bitcast %struct.ib_ud_wr* %12 to i8*
  %22 = bitcast %struct.ib_ud_wr* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false)
  %23 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %12, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %8, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %25, i32 0, i32 1
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %8, align 8
  %30 = call %struct.ib_qp* @get_tx_qp(%struct.mlx5_ib_gsi_qp* %29, %struct.ib_ud_wr* %12)
  store %struct.ib_qp* %30, %struct.ib_qp** %9, align 8
  %31 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %32 = icmp ne %struct.ib_qp* %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %18
  %34 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %8, align 8
  %35 = call i32 @mlx5_ib_gsi_silent_drop(%struct.mlx5_ib_gsi_qp* %34, %struct.ib_ud_wr* %12)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %79

39:                                               ; preds = %33
  %40 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %8, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %40, i32 0, i32 1
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  br label %74

44:                                               ; preds = %18
  %45 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %8, align 8
  %46 = call i32 @mlx5_ib_add_outstanding_wr(%struct.mlx5_ib_gsi_qp* %45, %struct.ib_ud_wr* %12, i32* null)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %79

50:                                               ; preds = %44
  %51 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %52 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %12, i32 0, i32 0
  %53 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %54 = call i32 @ib_post_send(%struct.ib_qp* %51, %struct.TYPE_4__* %52, %struct.ib_send_wr** %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %8, align 8
  %59 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %8, align 8
  %63 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = srem i32 %61, %65
  %67 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %8, align 8
  %68 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %79

69:                                               ; preds = %50
  %70 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %8, align 8
  %71 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %70, i32 0, i32 1
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  br label %74

74:                                               ; preds = %69, %39
  %75 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %76 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %75, i32 0, i32 0
  %77 = load %struct.ib_send_wr*, %struct.ib_send_wr** %76, align 8
  store %struct.ib_send_wr* %77, %struct.ib_send_wr** %6, align 8
  br label %15

78:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %87

79:                                               ; preds = %57, %49, %38
  %80 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %8, align 8
  %81 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %80, i32 0, i32 1
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %85 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %84, %struct.ib_send_wr** %85, align 8
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %79, %78
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.mlx5_ib_gsi_qp* @gsi_qp(%struct.ib_qp*) #1

declare dso_local %struct.ib_ud_wr* @ud_wr(%struct.ib_send_wr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ib_qp* @get_tx_qp(%struct.mlx5_ib_gsi_qp*, %struct.ib_ud_wr*) #1

declare dso_local i32 @mlx5_ib_gsi_silent_drop(%struct.mlx5_ib_gsi_qp*, %struct.ib_ud_wr*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mlx5_ib_add_outstanding_wr(%struct.mlx5_ib_gsi_qp*, %struct.ib_ud_wr*, i32*) #1

declare dso_local i32 @ib_post_send(%struct.ib_qp*, %struct.TYPE_4__*, %struct.ib_send_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
