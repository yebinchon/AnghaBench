; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_rereg_user_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_rereg_user_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_mr = type { %struct.TYPE_13__, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, i32, i8*, i8* }
%struct.TYPE_14__ = type { i32 }
%struct.mlx4_mpt_entry = type { i32 }
%struct.TYPE_12__ = type { i32 }

@IB_MR_REREG_PD = common dso_local global i32 0, align 4
@IB_MR_REREG_ACCESS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@IB_MR_REREG_TRANS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_rereg_user_mr(%struct.ib_mr* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5, %struct.ib_pd* %6, %struct.ib_udata* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_mr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_pd*, align 8
  %17 = alloca %struct.ib_udata*, align 8
  %18 = alloca %struct.mlx4_ib_dev*, align 8
  %19 = alloca %struct.mlx4_ib_mr*, align 8
  %20 = alloca %struct.mlx4_mpt_entry*, align 8
  %21 = alloca %struct.mlx4_mpt_entry**, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.ib_pd* %6, %struct.ib_pd** %16, align 8
  store %struct.ib_udata* %7, %struct.ib_udata** %17, align 8
  %25 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %26 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.mlx4_ib_dev* @to_mdev(i32 %27)
  store %struct.mlx4_ib_dev* %28, %struct.mlx4_ib_dev** %18, align 8
  %29 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %30 = call %struct.mlx4_ib_mr* @to_mmr(%struct.ib_mr* %29)
  store %struct.mlx4_ib_mr* %30, %struct.mlx4_ib_mr** %19, align 8
  store %struct.mlx4_mpt_entry** %20, %struct.mlx4_mpt_entry*** %21, align 8
  %31 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %34, i32 0, i32 0
  %36 = call i32 @mlx4_mr_hw_get_mpt(i32 %33, %struct.TYPE_13__* %35, %struct.mlx4_mpt_entry*** %21)
  store i32 %36, i32* %22, align 4
  %37 = load i32, i32* %22, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %8
  %40 = load i32, i32* %22, align 4
  store i32 %40, i32* %9, align 4
  br label %212

41:                                               ; preds = %8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @IB_MR_REREG_PD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %48 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mlx4_mpt_entry**, %struct.mlx4_mpt_entry*** %21, align 8
  %51 = load %struct.mlx4_mpt_entry*, %struct.mlx4_mpt_entry** %50, align 8
  %52 = load %struct.ib_pd*, %struct.ib_pd** %16, align 8
  %53 = call %struct.TYPE_12__* @to_mpd(%struct.ib_pd* %52)
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mlx4_mr_hw_change_pd(i32 %49, %struct.mlx4_mpt_entry* %51, i32 %55)
  store i32 %56, i32* %22, align 4
  %57 = load i32, i32* %22, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %205

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %41
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @IB_MR_REREG_ACCESS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %61
  %67 = load i32, i32* %15, align 4
  %68 = call i64 @ib_access_writable(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %72 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %71, i32 0, i32 1
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @EPERM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %22, align 4
  br label %205

80:                                               ; preds = %70, %66
  %81 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %82 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mlx4_mpt_entry**, %struct.mlx4_mpt_entry*** %21, align 8
  %85 = load %struct.mlx4_mpt_entry*, %struct.mlx4_mpt_entry** %84, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @convert_access(i32 %86)
  %88 = call i32 @mlx4_mr_hw_change_access(i32 %83, %struct.mlx4_mpt_entry* %85, i32 %87)
  store i32 %88, i32* %22, align 4
  %89 = load i32, i32* %22, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %205

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92, %61
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @IB_MR_REREG_TRANS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %184

98:                                               ; preds = %93
  %99 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %100 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %103 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %102, i32 0, i32 0
  %104 = call i32 @mlx4_mr_rereg_mem_cleanup(i32 %101, %struct.TYPE_13__* %103)
  %105 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %106 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %105, i32 0, i32 1
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = call i32 @ib_umem_release(%struct.TYPE_14__* %107)
  %109 = load %struct.ib_udata*, %struct.ib_udata** %17, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = load i32, i32* %15, align 4
  %113 = call %struct.TYPE_14__* @mlx4_get_umem_mr(%struct.ib_udata* %109, i8* %110, i8* %111, i32 %112)
  %114 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %115 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %114, i32 0, i32 1
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %115, align 8
  %116 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %117 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %116, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = call i64 @IS_ERR(%struct.TYPE_14__* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %98
  %122 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %123 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %122, i32 0, i32 1
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = call i32 @PTR_ERR(%struct.TYPE_14__* %124)
  store i32 %125, i32* %22, align 4
  %126 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %127 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %126, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %127, align 8
  br label %205

128:                                              ; preds = %98
  %129 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %130 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %129, i32 0, i32 1
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = call i32 @ib_umem_page_count(%struct.TYPE_14__* %131)
  store i32 %132, i32* %24, align 4
  %133 = load i32, i32* @PAGE_SHIFT, align 4
  store i32 %133, i32* %23, align 4
  %134 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %135 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %138 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %137, i32 0, i32 0
  %139 = load i8*, i8** %14, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = load i32, i32* %24, align 4
  %142 = load i32, i32* %23, align 4
  %143 = load %struct.mlx4_mpt_entry**, %struct.mlx4_mpt_entry*** %21, align 8
  %144 = load %struct.mlx4_mpt_entry*, %struct.mlx4_mpt_entry** %143, align 8
  %145 = call i32 @mlx4_mr_rereg_mem_write(i32 %136, %struct.TYPE_13__* %138, i8* %139, i8* %140, i32 %141, i32 %142, %struct.mlx4_mpt_entry* %144)
  store i32 %145, i32* %22, align 4
  %146 = load i32, i32* %22, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %128
  %149 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %150 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %149, i32 0, i32 1
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = call i32 @ib_umem_release(%struct.TYPE_14__* %151)
  br label %205

153:                                              ; preds = %128
  %154 = load i8*, i8** %14, align 8
  %155 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %156 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 3
  store i8* %154, i8** %157, align 8
  %158 = load i8*, i8** %13, align 8
  %159 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %160 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 2
  store i8* %158, i8** %161, align 8
  %162 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %163 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %164 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %167 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %166, i32 0, i32 1
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = call i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev* %162, i32* %165, %struct.TYPE_14__* %168)
  store i32 %169, i32* %22, align 4
  %170 = load i32, i32* %22, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %153
  %173 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %174 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %177 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %176, i32 0, i32 0
  %178 = call i32 @mlx4_mr_rereg_mem_cleanup(i32 %175, %struct.TYPE_13__* %177)
  %179 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %180 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %179, i32 0, i32 1
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = call i32 @ib_umem_release(%struct.TYPE_14__* %181)
  br label %205

183:                                              ; preds = %153
  br label %184

184:                                              ; preds = %183, %93
  %185 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %186 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %189 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %188, i32 0, i32 0
  %190 = load %struct.mlx4_mpt_entry**, %struct.mlx4_mpt_entry*** %21, align 8
  %191 = call i32 @mlx4_mr_hw_write_mpt(i32 %187, %struct.TYPE_13__* %189, %struct.mlx4_mpt_entry** %190)
  store i32 %191, i32* %22, align 4
  %192 = load i32, i32* %22, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %204, label %194

194:                                              ; preds = %184
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* @IB_MR_REREG_ACCESS, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %194
  %200 = load i32, i32* %15, align 4
  %201 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %19, align 8
  %202 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  store i32 %200, i32* %203, align 8
  br label %204

204:                                              ; preds = %199, %194, %184
  br label %205

205:                                              ; preds = %204, %172, %148, %121, %91, %77, %59
  %206 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %18, align 8
  %207 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.mlx4_mpt_entry**, %struct.mlx4_mpt_entry*** %21, align 8
  %210 = call i32 @mlx4_mr_hw_put_mpt(i32 %208, %struct.mlx4_mpt_entry** %209)
  %211 = load i32, i32* %22, align 4
  store i32 %211, i32* %9, align 4
  br label %212

212:                                              ; preds = %205, %39
  %213 = load i32, i32* %9, align 4
  ret i32 %213
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @mlx4_mr_hw_get_mpt(i32, %struct.TYPE_13__*, %struct.mlx4_mpt_entry***) #1

declare dso_local i32 @mlx4_mr_hw_change_pd(i32, %struct.mlx4_mpt_entry*, i32) #1

declare dso_local %struct.TYPE_12__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i64 @ib_access_writable(i32) #1

declare dso_local i32 @mlx4_mr_hw_change_access(i32, %struct.mlx4_mpt_entry*, i32) #1

declare dso_local i32 @convert_access(i32) #1

declare dso_local i32 @mlx4_mr_rereg_mem_cleanup(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ib_umem_release(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @mlx4_get_umem_mr(%struct.ib_udata*, i8*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_14__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_14__*) #1

declare dso_local i32 @ib_umem_page_count(%struct.TYPE_14__*) #1

declare dso_local i32 @mlx4_mr_rereg_mem_write(i32, %struct.TYPE_13__*, i8*, i8*, i32, i32, %struct.mlx4_mpt_entry*) #1

declare dso_local i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @mlx4_mr_hw_write_mpt(i32, %struct.TYPE_13__*, %struct.mlx4_mpt_entry**) #1

declare dso_local i32 @mlx4_mr_hw_put_mpt(i32, %struct.mlx4_mpt_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
