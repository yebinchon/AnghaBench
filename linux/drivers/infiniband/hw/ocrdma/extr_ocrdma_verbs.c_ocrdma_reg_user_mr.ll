; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_reg_user_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_reg_user_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_mr = type { %struct.TYPE_4__, %struct.ib_mr, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32 }
%struct.ocrdma_pd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @ocrdma_reg_user_mr(%struct.ib_pd* %0, i8* %1, i8* %2, i8* %3, i32 %4, %struct.ib_udata* %5) #0 {
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_udata*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocrdma_dev*, align 8
  %16 = alloca %struct.ocrdma_mr*, align 8
  %17 = alloca %struct.ocrdma_pd*, align 8
  %18 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.ib_udata* %5, %struct.ib_udata** %13, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %14, align 4
  %21 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %22 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %23)
  store %struct.ocrdma_dev* %24, %struct.ocrdma_dev** %15, align 8
  %25 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %26 = call %struct.ocrdma_pd* @get_ocrdma_pd(%struct.ib_pd* %25)
  store %struct.ocrdma_pd* %26, %struct.ocrdma_pd** %17, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %6
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.ib_mr* @ERR_PTR(i32 %38)
  store %struct.ib_mr* %39, %struct.ib_mr** %7, align 8
  br label %198

40:                                               ; preds = %31, %6
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.ocrdma_mr* @kzalloc(i32 64, i32 %41)
  store %struct.ocrdma_mr* %42, %struct.ocrdma_mr** %16, align 8
  %43 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %44 = icmp ne %struct.ocrdma_mr* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %14, align 4
  %47 = call %struct.ib_mr* @ERR_PTR(i32 %46)
  store %struct.ib_mr* %47, %struct.ib_mr** %7, align 8
  br label %198

48:                                               ; preds = %40
  %49 = load %struct.ib_udata*, %struct.ib_udata** %13, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @ib_umem_get(%struct.ib_udata* %49, i8* %50, i8* %51, i32 %52, i32 0)
  %54 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %55 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %57 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @IS_ERR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load i32, i32* @EFAULT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %14, align 4
  br label %193

64:                                               ; preds = %48
  %65 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %66 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ib_umem_page_count(i32 %67)
  store i32 %68, i32* %18, align 4
  %69 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %15, align 8
  %70 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %71 = load i32, i32* %18, align 4
  %72 = call i32 @ocrdma_get_pbl_info(%struct.ocrdma_dev* %69, %struct.ocrdma_mr* %70, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %193

76:                                               ; preds = %64
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %79 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 9
  store i32 %77, i32* %80, align 4
  %81 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %82 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ib_umem_offset(i32 %83)
  %85 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %86 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 8
  store i32 %84, i32* %87, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %90 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 7
  store i8* %88, i8** %91, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %94 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 6
  store i8* %92, i8** %95, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 1, i32 0
  %102 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %103 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 0
  %111 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %112 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 1, i32 0
  %120 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %121 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  store i32 %119, i32* %122, align 8
  %123 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %124 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  store i32 1, i32* %125, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 1, i32 0
  %132 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %133 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 4
  store i32 %131, i32* %134, align 8
  %135 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %15, align 8
  %136 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %137 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %136, i32 0, i32 0
  %138 = call i32 @ocrdma_build_pbl_tbl(%struct.ocrdma_dev* %135, %struct.TYPE_4__* %137)
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %76
  br label %193

142:                                              ; preds = %76
  %143 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %15, align 8
  %144 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %145 = load i32, i32* %18, align 4
  %146 = call i32 @build_user_pbes(%struct.ocrdma_dev* %143, %struct.ocrdma_mr* %144, i32 %145)
  %147 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %15, align 8
  %148 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %149 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %148, i32 0, i32 0
  %150 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %17, align 8
  %151 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @ocrdma_reg_mr(%struct.ocrdma_dev* %147, %struct.TYPE_4__* %149, i32 %152, i32 %153)
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %142
  br label %188

158:                                              ; preds = %142
  %159 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %160 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %164 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 4
  %166 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %167 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %158
  %172 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %173 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %171, %158
  %178 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %179 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %183 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 8
  br label %185

185:                                              ; preds = %177, %171
  %186 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %187 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %186, i32 0, i32 1
  store %struct.ib_mr* %187, %struct.ib_mr** %7, align 8
  br label %198

188:                                              ; preds = %157
  %189 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %15, align 8
  %190 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %191 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %190, i32 0, i32 0
  %192 = call i32 @ocrdma_free_mr_pbl_tbl(%struct.ocrdma_dev* %189, %struct.TYPE_4__* %191)
  br label %193

193:                                              ; preds = %188, %141, %75, %61
  %194 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %16, align 8
  %195 = call i32 @kfree(%struct.ocrdma_mr* %194)
  %196 = load i32, i32* %14, align 4
  %197 = call %struct.ib_mr* @ERR_PTR(i32 %196)
  store %struct.ib_mr* %197, %struct.ib_mr** %7, align 8
  br label %198

198:                                              ; preds = %193, %185, %45, %36
  %199 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  ret %struct.ib_mr* %199
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local %struct.ocrdma_pd* @get_ocrdma_pd(%struct.ib_pd*) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local %struct.ocrdma_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @ib_umem_get(%struct.ib_udata*, i8*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @ib_umem_page_count(i32) #1

declare dso_local i32 @ocrdma_get_pbl_info(%struct.ocrdma_dev*, %struct.ocrdma_mr*, i32) #1

declare dso_local i32 @ib_umem_offset(i32) #1

declare dso_local i32 @ocrdma_build_pbl_tbl(%struct.ocrdma_dev*, %struct.TYPE_4__*) #1

declare dso_local i32 @build_user_pbes(%struct.ocrdma_dev*, %struct.ocrdma_mr*, i32) #1

declare dso_local i32 @ocrdma_reg_mr(%struct.ocrdma_dev*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ocrdma_free_mr_pbl_tbl(%struct.ocrdma_dev*, %struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.ocrdma_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
