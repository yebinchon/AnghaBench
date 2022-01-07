; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_map_user_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_map_user_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mthca_uar = type { i32 }
%struct.mthca_user_db_table = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.page = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MTHCA_DB_REC_PER_PAGE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@FOLL_LONGTERM = common dso_local global i32 0, align 4
@MTHCA_ICM_PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_map_user_db(%struct.mthca_dev* %0, %struct.mthca_uar* %1, %struct.mthca_user_db_table* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mthca_dev*, align 8
  %8 = alloca %struct.mthca_uar*, align 8
  %9 = alloca %struct.mthca_user_db_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1 x %struct.page*], align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %7, align 8
  store %struct.mthca_uar* %1, %struct.mthca_uar** %8, align 8
  store %struct.mthca_user_db_table* %2, %struct.mthca_user_db_table** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %16 = call i32 @mthca_is_memfree(%struct.mthca_dev* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %204

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %25 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 8
  %29 = icmp sgt i32 %23, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22, %19
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %204

33:                                               ; preds = %22
  %34 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %35 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @MTHCA_DB_REC_PER_PAGE, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %14, align 4
  %40 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %41 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MTHCA_DB_REC_PER_PAGE, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %75, label %50

50:                                               ; preds = %33
  %51 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %52 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %50
  %61 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %62 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %60, %50
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %72, 4095
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %60, %33
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %13, align 4
  br label %199

78:                                               ; preds = %71
  %79 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %80 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %78
  %89 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %90 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %199

98:                                               ; preds = %78
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @PAGE_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @FOLL_WRITE, align 4
  %103 = load i32, i32* @FOLL_LONGTERM, align 4
  %104 = or i32 %102, %103
  %105 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %12, i64 0, i64 0
  %106 = call i32 @get_user_pages_fast(i32 %101, i32 1, i32 %104, %struct.page** %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %199

110:                                              ; preds = %98
  %111 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %112 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %12, i64 0, i64 0
  %119 = load %struct.page*, %struct.page** %118, align 8
  %120 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @PAGE_MASK, align 4
  %123 = xor i32 %122, -1
  %124 = and i32 %121, %123
  %125 = call i32 @sg_set_page(i32* %117, %struct.page* %119, i32 %120, i32 %124)
  %126 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %127 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %130 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %137 = call i32 @pci_map_sg(i32 %128, i32* %135, i32 1, i32 %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %110
  %141 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %12, i64 0, i64 0
  %142 = load %struct.page*, %struct.page** %141, align 8
  %143 = call i32 @put_user_page(%struct.page* %142)
  br label %199

144:                                              ; preds = %110
  %145 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %146 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %147 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = call i32 @sg_dma_address(i32* %152)
  %154 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %155 = load %struct.mthca_uar*, %struct.mthca_uar** %8, align 8
  %156 = load i32, i32* %14, align 4
  %157 = call i32 @mthca_uarc_virt(%struct.mthca_dev* %154, %struct.mthca_uar* %155, i32 %156)
  %158 = call i32 @mthca_MAP_ICM_page(%struct.mthca_dev* %145, i32 %153, i32 %157)
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %183

161:                                              ; preds = %144
  %162 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %163 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %166 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %165, i32 0, i32 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 2
  %172 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %173 = call i32 @pci_unmap_sg(i32 %164, i32* %171, i32 1, i32 %172)
  %174 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %175 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %174, i32 0, i32 1
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 2
  %181 = call %struct.page* @sg_page(i32* %180)
  %182 = call i32 @put_user_page(%struct.page* %181)
  br label %199

183:                                              ; preds = %144
  %184 = load i32, i32* %11, align 4
  %185 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %186 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %185, i32 0, i32 1
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  store i32 %184, i32* %191, align 4
  %192 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %193 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %192, i32 0, i32 1
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  store i32 1, i32* %198, align 4
  br label %199

199:                                              ; preds = %183, %161, %140, %109, %88, %75
  %200 = load %struct.mthca_user_db_table*, %struct.mthca_user_db_table** %9, align 8
  %201 = getelementptr inbounds %struct.mthca_user_db_table, %struct.mthca_user_db_table* %200, i32 0, i32 0
  %202 = call i32 @mutex_unlock(i32* %201)
  %203 = load i32, i32* %13, align 4
  store i32 %203, i32* %6, align 4
  br label %204

204:                                              ; preds = %199, %30, %18
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local i32 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_user_pages_fast(i32, i32, i32, %struct.page**) #1

declare dso_local i32 @sg_set_page(i32*, %struct.page*, i32, i32) #1

declare dso_local i32 @pci_map_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @put_user_page(%struct.page*) #1

declare dso_local i32 @mthca_MAP_ICM_page(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @sg_dma_address(i32*) #1

declare dso_local i32 @mthca_uarc_virt(%struct.mthca_dev*, %struct.mthca_uar*, i32) #1

declare dso_local i32 @pci_unmap_sg(i32, i32*, i32, i32) #1

declare dso_local %struct.page* @sg_page(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
