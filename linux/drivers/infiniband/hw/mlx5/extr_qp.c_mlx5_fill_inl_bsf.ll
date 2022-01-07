; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_fill_inl_bsf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_fill_inl_bsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sig_domain = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i64, i64, i64, i32 }
%struct.mlx5_bsf_inl = type { i8*, i32, i32, i32, i32, i8*, i8* }

@MLX5_BSF_INL_VALID = common dso_local global i32 0, align 4
@MLX5_BSF_REFRESH_DIF = common dso_local global i32 0, align 4
@MLX5_BSF_REPEAT_BLOCK = common dso_local global i32 0, align 4
@IB_T10DIF_CRC = common dso_local global i64 0, align 8
@MLX5_DIF_CRC = common dso_local global i32 0, align 4
@MLX5_DIF_IPCS = common dso_local global i32 0, align 4
@MLX5_BSF_INC_REFTAG = common dso_local global i32 0, align 4
@MLX5_BSF_APPREF_ESCAPE = common dso_local global i32 0, align 4
@MLX5_BSF_APPTAG_ESCAPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_sig_domain*, %struct.mlx5_bsf_inl*)* @mlx5_fill_inl_bsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fill_inl_bsf(%struct.ib_sig_domain* %0, %struct.mlx5_bsf_inl* %1) #0 {
  %3 = alloca %struct.ib_sig_domain*, align 8
  %4 = alloca %struct.mlx5_bsf_inl*, align 8
  store %struct.ib_sig_domain* %0, %struct.ib_sig_domain** %3, align 8
  store %struct.mlx5_bsf_inl* %1, %struct.mlx5_bsf_inl** %4, align 8
  %5 = load i32, i32* @MLX5_BSF_INL_VALID, align 4
  %6 = load i32, i32* @MLX5_BSF_REFRESH_DIF, align 4
  %7 = or i32 %5, %6
  %8 = call i8* @cpu_to_be16(i32 %7)
  %9 = load %struct.mlx5_bsf_inl*, %struct.mlx5_bsf_inl** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_bsf_inl, %struct.mlx5_bsf_inl* %9, i32 0, i32 6
  store i8* %8, i8** %10, align 8
  %11 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %3, align 8
  %12 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @cpu_to_be16(i32 %15)
  %17 = load %struct.mlx5_bsf_inl*, %struct.mlx5_bsf_inl** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_bsf_inl, %struct.mlx5_bsf_inl* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %3, align 8
  %20 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @cpu_to_be32(i32 %23)
  %25 = load %struct.mlx5_bsf_inl*, %struct.mlx5_bsf_inl** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5_bsf_inl, %struct.mlx5_bsf_inl* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @MLX5_BSF_REPEAT_BLOCK, align 4
  %28 = load %struct.mlx5_bsf_inl*, %struct.mlx5_bsf_inl** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_bsf_inl, %struct.mlx5_bsf_inl* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %3, align 8
  %31 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IB_T10DIF_CRC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @MLX5_DIF_CRC, align 4
  br label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @MLX5_DIF_IPCS, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.mlx5_bsf_inl*, %struct.mlx5_bsf_inl** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5_bsf_inl, %struct.mlx5_bsf_inl* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %3, align 8
  %46 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load i32, i32* @MLX5_BSF_INC_REFTAG, align 4
  %53 = load %struct.mlx5_bsf_inl*, %struct.mlx5_bsf_inl** %4, align 8
  %54 = getelementptr inbounds %struct.mlx5_bsf_inl, %struct.mlx5_bsf_inl* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %41
  %58 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %3, align 8
  %59 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %57
  %65 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %3, align 8
  %66 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load i32, i32* @MLX5_BSF_APPREF_ESCAPE, align 4
  %73 = load %struct.mlx5_bsf_inl*, %struct.mlx5_bsf_inl** %4, align 8
  %74 = getelementptr inbounds %struct.mlx5_bsf_inl, %struct.mlx5_bsf_inl* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %83

77:                                               ; preds = %64
  %78 = load i32, i32* @MLX5_BSF_APPTAG_ESCAPE, align 4
  %79 = load %struct.mlx5_bsf_inl*, %struct.mlx5_bsf_inl** %4, align 8
  %80 = getelementptr inbounds %struct.mlx5_bsf_inl, %struct.mlx5_bsf_inl* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %71
  br label %84

84:                                               ; preds = %83, %57
  %85 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %3, align 8
  %86 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @cpu_to_be16(i32 %89)
  %91 = load %struct.mlx5_bsf_inl*, %struct.mlx5_bsf_inl** %4, align 8
  %92 = getelementptr inbounds %struct.mlx5_bsf_inl, %struct.mlx5_bsf_inl* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  ret void
}

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
