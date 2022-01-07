; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_puda_get_tcpip_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_puda_get_tcpip_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_puda_completion_info = type { i32, i64, i64 }
%struct.i40iw_puda_buf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.iphdr = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.tcphdr = type { i32, i32 }
%struct.ethhdr = type { i64 }
%struct.vlan_ethhdr = type { i32 }

@VLAN_VID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"payload_len = 0x%x totallen expected0x%x\0A\00", align 1
@I40IW_ERR_INVALID_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_puda_get_tcpip_info(%struct.i40iw_puda_completion_info* %0, %struct.i40iw_puda_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_puda_completion_info*, align 8
  %5 = alloca %struct.i40iw_puda_buf*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ethhdr*, align 8
  store %struct.i40iw_puda_completion_info* %0, %struct.i40iw_puda_completion_info** %4, align 8
  store %struct.i40iw_puda_buf* %1, %struct.i40iw_puda_buf** %5, align 8
  %13 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %14 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %13, i32 0, i32 11
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %11, align 8
  %18 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %19 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %18, i32 0, i32 11
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ethhdr*
  store %struct.ethhdr* %22, %struct.ethhdr** %12, align 8
  %23 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %24 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @htons(i32 33024)
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = load %struct.i40iw_puda_completion_info*, %struct.i40iw_puda_completion_info** %4, align 8
  %30 = getelementptr inbounds %struct.i40iw_puda_completion_info, %struct.i40iw_puda_completion_info* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %32 = bitcast %struct.ethhdr* %31 to %struct.vlan_ethhdr*
  %33 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ntohs(i32 %34)
  %36 = load i32, i32* @VLAN_VID_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %39 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %28, %2
  %41 = load %struct.i40iw_puda_completion_info*, %struct.i40iw_puda_completion_info** %4, align 8
  %42 = getelementptr inbounds %struct.i40iw_puda_completion_info, %struct.i40iw_puda_completion_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 18, i32 14
  %47 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %48 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.i40iw_puda_completion_info*, %struct.i40iw_puda_completion_info** %4, align 8
  %50 = getelementptr inbounds %struct.i40iw_puda_completion_info, %struct.i40iw_puda_completion_info* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 40, i32 20
  store i32 %54, i32* %9, align 4
  %55 = load %struct.i40iw_puda_completion_info*, %struct.i40iw_puda_completion_info** %4, align 8
  %56 = getelementptr inbounds %struct.i40iw_puda_completion_info, %struct.i40iw_puda_completion_info* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 0, i32 1
  %61 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %62 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %65 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %70 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %69, i32 0, i32 10
  store i32* %68, i32** %70, align 8
  %71 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %72 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %71, i32 0, i32 10
  %73 = load i32*, i32** %72, align 8
  %74 = bitcast i32* %73 to %struct.iphdr*
  store %struct.iphdr* %74, %struct.iphdr** %6, align 8
  %75 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %76 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %75, i32 0, i32 10
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %82 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %81, i32 0, i32 8
  store i32* %80, i32** %82, align 8
  %83 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %84 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %83, i32 0, i32 8
  %85 = load i32*, i32** %84, align 8
  %86 = bitcast i32* %85 to %struct.tcphdr*
  store %struct.tcphdr* %86, %struct.tcphdr** %8, align 8
  %87 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %88 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %40
  %92 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %93 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ntohs(i32 %94)
  store i32 %95, i32* %10, align 4
  br label %107

96:                                               ; preds = %40
  %97 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %98 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %97, i32 0, i32 10
  %99 = load i32*, i32** %98, align 8
  %100 = bitcast i32* %99 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %100, %struct.ipv6hdr** %7, align 8
  %101 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %102 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ntohs(i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %96, %91
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %110 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %108, %111
  %113 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %114 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.i40iw_puda_completion_info*, %struct.i40iw_puda_completion_info** %4, align 8
  %116 = getelementptr inbounds %struct.i40iw_puda_completion_info, %struct.i40iw_puda_completion_info* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %119 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp slt i64 %117, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %107
  %124 = load %struct.i40iw_puda_completion_info*, %struct.i40iw_puda_completion_info** %4, align 8
  %125 = getelementptr inbounds %struct.i40iw_puda_completion_info, %struct.i40iw_puda_completion_info* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %128 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %126, i64 %130)
  %132 = load i32, i32* @I40IW_ERR_INVALID_SIZE, align 4
  store i32 %132, i32* %3, align 4
  br label %184

133:                                              ; preds = %107
  %134 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %135 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 2
  %138 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %139 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %9, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %144 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %142, %145
  %147 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %148 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 4
  %149 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %150 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %133
  %154 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %155 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %154, i32 0, i32 8
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %158 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  br label %163

162:                                              ; preds = %133
  br label %163

163:                                              ; preds = %162, %153
  %164 = phi i32* [ %161, %153 ], [ null, %162 ]
  %165 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %166 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %165, i32 0, i32 9
  store i32* %164, i32** %166, align 8
  %167 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %168 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %169, %170
  %172 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %173 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %171, %174
  %176 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %177 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %176, i32 0, i32 6
  store i32 %175, i32* %177, align 8
  %178 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %179 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @ntohl(i32 %180)
  %182 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %183 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %182, i32 0, i32 7
  store i32 %181, i32* %183, align 4
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %163, %123
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @i40iw_pr_err(i8*, i64, i64) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
