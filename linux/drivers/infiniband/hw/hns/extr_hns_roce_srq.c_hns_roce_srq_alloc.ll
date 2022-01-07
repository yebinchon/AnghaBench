; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_hns_roce_srq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_hns_roce_srq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_10__*, i32, %struct.TYPE_7__, %struct.hns_roce_srq_table }
%struct.TYPE_10__ = type { i32 (%struct.hns_roce_dev*, %struct.hns_roce_srq*, i32, i32, i32, i32, i32*, i32*, i32, i32)* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.hns_roce_srq_table = type { i32, i32, i32 }
%struct.hns_roce_mtt = type { i32 }
%struct.hns_roce_srq = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.hns_roce_cmd_mailbox = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"SRQ alloc.Failed to find srq buf addr.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"SRQ alloc.Failed to find idx que buf addr.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"SRQ alloc.Failed to alloc index.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BITMAP_NO_RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32, i32, i32, %struct.hns_roce_mtt*, i32, %struct.hns_roce_srq*)* @hns_roce_srq_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_srq_alloc(%struct.hns_roce_dev* %0, i32 %1, i32 %2, i32 %3, %struct.hns_roce_mtt* %4, i32 %5, %struct.hns_roce_srq* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hns_roce_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hns_roce_mtt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.hns_roce_srq*, align 8
  %16 = alloca %struct.hns_roce_srq_table*, align 8
  %17 = alloca %struct.hns_roce_cmd_mailbox*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.hns_roce_mtt* %4, %struct.hns_roce_mtt** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.hns_roce_srq* %6, %struct.hns_roce_srq** %15, align 8
  %23 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %24 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %23, i32 0, i32 3
  store %struct.hns_roce_srq_table* %24, %struct.hns_roce_srq_table** %16, align 8
  %25 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %26 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %27 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %15, align 8
  %30 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @hns_roce_table_find(%struct.hns_roce_dev* %25, i32* %28, i32 %32, i32* %18)
  store i32* %33, i32** %20, align 8
  %34 = load i32*, i32** %20, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %7
  %37 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %38 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %174

43:                                               ; preds = %7
  %44 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %45 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %46 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %15, align 8
  %49 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @hns_roce_table_find(%struct.hns_roce_dev* %44, i32* %47, i32 %52, i32* %19)
  store i32* %53, i32** %21, align 8
  %54 = load i32*, i32** %21, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %43
  %57 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %58 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %174

63:                                               ; preds = %43
  %64 = load %struct.hns_roce_srq_table*, %struct.hns_roce_srq_table** %16, align 8
  %65 = getelementptr inbounds %struct.hns_roce_srq_table, %struct.hns_roce_srq_table* %64, i32 0, i32 0
  %66 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %15, align 8
  %67 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %66, i32 0, i32 0
  %68 = call i32 @hns_roce_bitmap_alloc(i32* %65, i32* %67)
  store i32 %68, i32* %22, align 4
  %69 = load i32, i32* %22, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %73 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %174

78:                                               ; preds = %63
  %79 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %80 = load %struct.hns_roce_srq_table*, %struct.hns_roce_srq_table** %16, align 8
  %81 = getelementptr inbounds %struct.hns_roce_srq_table, %struct.hns_roce_srq_table* %80, i32 0, i32 1
  %82 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %15, align 8
  %83 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @hns_roce_table_get(%struct.hns_roce_dev* %79, i32* %81, i32 %84)
  store i32 %85, i32* %22, align 4
  %86 = load i32, i32* %22, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %165

89:                                               ; preds = %78
  %90 = load %struct.hns_roce_srq_table*, %struct.hns_roce_srq_table** %16, align 8
  %91 = getelementptr inbounds %struct.hns_roce_srq_table, %struct.hns_roce_srq_table* %90, i32 0, i32 2
  %92 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %15, align 8
  %93 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %15, align 8
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call i32 @xa_store(i32* %91, i32 %94, %struct.hns_roce_srq* %95, i32 %96)
  %98 = call i32 @xa_err(i32 %97)
  store i32 %98, i32* %22, align 4
  %99 = load i32, i32* %22, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  br label %157

102:                                              ; preds = %89
  %103 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %104 = call %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev* %103)
  store %struct.hns_roce_cmd_mailbox* %104, %struct.hns_roce_cmd_mailbox** %17, align 8
  %105 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %17, align 8
  %106 = call i64 @IS_ERR(%struct.hns_roce_cmd_mailbox* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %17, align 8
  %110 = call i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox* %109)
  store i32 %110, i32* %22, align 4
  br label %150

111:                                              ; preds = %102
  %112 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %113 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %112, i32 0, i32 0
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32 (%struct.hns_roce_dev*, %struct.hns_roce_srq*, i32, i32, i32, i32, i32*, i32*, i32, i32)*, i32 (%struct.hns_roce_dev*, %struct.hns_roce_srq*, i32, i32, i32, i32, i32*, i32*, i32, i32)** %115, align 8
  %117 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %118 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %15, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %17, align 8
  %123 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %20, align 8
  %126 = load i32*, i32** %21, align 8
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %19, align 4
  %129 = call i32 %116(%struct.hns_roce_dev* %117, %struct.hns_roce_srq* %118, i32 %119, i32 %120, i32 %121, i32 %124, i32* %125, i32* %126, i32 %127, i32 %128)
  %130 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %131 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %17, align 8
  %132 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %15, align 8
  %133 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @hns_roce_sw2hw_srq(%struct.hns_roce_dev* %130, %struct.hns_roce_cmd_mailbox* %131, i32 %134)
  store i32 %135, i32* %22, align 4
  %136 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %137 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %17, align 8
  %138 = call i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %136, %struct.hns_roce_cmd_mailbox* %137)
  %139 = load i32, i32* %22, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %111
  br label %150

142:                                              ; preds = %111
  %143 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %15, align 8
  %144 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %143, i32 0, i32 2
  %145 = call i32 @atomic_set(i32* %144, i32 1)
  %146 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %15, align 8
  %147 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %146, i32 0, i32 1
  %148 = call i32 @init_completion(i32* %147)
  %149 = load i32, i32* %22, align 4
  store i32 %149, i32* %8, align 4
  br label %174

150:                                              ; preds = %141, %108
  %151 = load %struct.hns_roce_srq_table*, %struct.hns_roce_srq_table** %16, align 8
  %152 = getelementptr inbounds %struct.hns_roce_srq_table, %struct.hns_roce_srq_table* %151, i32 0, i32 2
  %153 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %15, align 8
  %154 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @xa_erase(i32* %152, i32 %155)
  br label %157

157:                                              ; preds = %150, %101
  %158 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %159 = load %struct.hns_roce_srq_table*, %struct.hns_roce_srq_table** %16, align 8
  %160 = getelementptr inbounds %struct.hns_roce_srq_table, %struct.hns_roce_srq_table* %159, i32 0, i32 1
  %161 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %15, align 8
  %162 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %158, i32* %160, i32 %163)
  br label %165

165:                                              ; preds = %157, %88
  %166 = load %struct.hns_roce_srq_table*, %struct.hns_roce_srq_table** %16, align 8
  %167 = getelementptr inbounds %struct.hns_roce_srq_table, %struct.hns_roce_srq_table* %166, i32 0, i32 0
  %168 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %15, align 8
  %169 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @BITMAP_NO_RR, align 4
  %172 = call i32 @hns_roce_bitmap_free(i32* %167, i32 %170, i32 %171)
  %173 = load i32, i32* %22, align 4
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %165, %142, %71, %56, %36
  %175 = load i32, i32* %8, align 4
  ret i32 %175
}

declare dso_local i32* @hns_roce_table_find(%struct.hns_roce_dev*, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hns_roce_bitmap_alloc(i32*, i32*) #1

declare dso_local i32 @hns_roce_table_get(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @xa_err(i32) #1

declare dso_local i32 @xa_store(i32*, i32, %struct.hns_roce_srq*, i32) #1

declare dso_local %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev*) #1

declare dso_local i64 @IS_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @hns_roce_sw2hw_srq(%struct.hns_roce_dev*, %struct.hns_roce_cmd_mailbox*, i32) #1

declare dso_local i32 @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev*, %struct.hns_roce_cmd_mailbox*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @xa_erase(i32*, i32) #1

declare dso_local i32 @hns_roce_table_put(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @hns_roce_bitmap_free(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
